#!/usr/bin/env python3
"""Deterministic, non-mutating production validator.

The validator reads episode plans and scene specifications and fails on drift.
It never rewrites source files.
"""
from __future__ import annotations

import argparse
import json
import re
import sys
from pathlib import Path

CANONICAL = {
    "@Leo": ("CHAR-01", "LEO-REF-001"),
    "@Maya": ("CHAR-02", "MAYA-REF-001"),
    "@Benny": ("CHAR-03", "BENNY-REF-001"),
    "@Sunny": ("CHAR-04", "SUNNY-REF-001"),
    "@Nora": ("CHAR-05", "NORA-REF-001"),
}

SCENE_ROW = re.compile(r"^\|\s*(SC-\d+)\s*\|.*?\|\s*(\d+)s\s*\|\s*$")
SCENE_ID = re.compile(r"^## Scene ID\s*$", re.M)
DURATION = re.compile(r"^## Duration\s*$", re.M)
INVOCATION = re.compile(r"@[A-Z][A-Za-z]+")
CHAR_ID_LINE = re.compile(r"CHAR-\d+")
REF_ID_LINE = re.compile(r"[A-Z]+-REF-\d+")


def read(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def parse_scene_map(text: str):
    rows = []
    for line in text.splitlines():
        m = SCENE_ROW.match(line.strip())
        if m:
            rows.append((m.group(1), int(m.group(2))))
    return rows


def parse_scene(path: Path):
    text = read(path)
    sid = re.search(r"^## Scene ID\s*\n\s*(SC-\d+)\s*$", text, re.M)
    dur = re.search(r"^## Duration\s*\n\s*(\d+)\s*seconds?\s*$", text, re.M | re.I)
    inv = re.search(r"^## Characters\s*\n(.*?)(?=\n###|\n## |\Z)", text, re.M | re.S)
    characters = INVOCATION.findall(inv.group(1)) if inv else []
    char_ids = CHAR_ID_LINE.findall(text)
    refs = REF_ID_LINE.findall(text)
    return {
        "id": sid.group(1) if sid else None,
        "duration": int(dur.group(1)) if dur else None,
        "characters": characters,
        "char_ids": char_ids,
        "refs": refs,
        "text": text,
    }


def validate_episode(root: Path, episode_id: str, lock_path: Path | None = None) -> list[str]:
    errors: list[str] = []
    ep_dir = root / "03_CONTENT" / "Episodes" / episode_id
    if not ep_dir.is_dir():
        return [f"{episode_id}: episode directory missing: {ep_dir}"]

    maps = sorted(ep_dir.glob("*TIMED_SCENE_MAP*.md"))
    if not maps:
        errors.append(f"{episode_id}: timed scene map missing")
        return errors
    rows = parse_scene_map(read(maps[0]))
    if not rows:
        errors.append(f"{episode_id}: no timed scene rows found")
        return errors

    ids = [x[0] for x in rows]
    if len(ids) != len(set(ids)):
        errors.append(f"{episode_id}: duplicate scene IDs in timed scene map")

    scene_files = {p.stem: p for p in (ep_dir / "Scenes").glob("SC-*.md")} if (ep_dir / "Scenes").is_dir() else {}
    expected_ids = set(ids)
    actual_ids = set(scene_files)
    for missing in sorted(expected_ids - actual_ids):
        errors.append(f"{episode_id}: missing scene specification {missing}")
    for extra in sorted(actual_ids - expected_ids):
        errors.append(f"{episode_id}: undeclared scene specification {extra}")

    total = sum(d for _, d in rows)
    if total <= 0:
        errors.append(f"{episode_id}: runtime must be positive")

    for sid, map_duration in rows:
        if sid not in scene_files:
            continue
        s = parse_scene(scene_files[sid])
        if s["id"] != sid:
            errors.append(f"{episode_id}/{sid}: Scene ID does not match filename/map")
        if s["duration"] is None:
            errors.append(f"{episode_id}/{sid}: duration missing or unparsable")
        elif s["duration"] != map_duration:
            errors.append(f"{episode_id}/{sid}: duration {s['duration']}s != scene map {map_duration}s")
        for inv in s["characters"]:
            expected = CANONICAL.get(inv)
            if not expected:
                errors.append(f"{episode_id}/{sid}: unknown character invocation {inv}")
                continue
            cid, ref = expected
            if cid not in s["char_ids"]:
                errors.append(f"{episode_id}/{sid}: {inv} missing canonical Character ID {cid}")
            if ref not in s["refs"]:
                errors.append(f"{episode_id}/{sid}: {inv} missing canonical Reference ID {ref}")
        # Detect the known class of malformed character-list drift: invocation lines
        # outside the Characters section are rejected when they are not part of a
        # generation prompt/negative constraint.
        char_section = re.search(r"^## Characters\s*\n(.*?)(?=\n###|\n## |\Z)", s["text"], re.M | re.S)
        declared = set(INVOCATION.findall(char_section.group(1))) if char_section else set()
        for inv in set(INVOCATION.findall(s["text"])) - declared:
            if inv not in s["text"].split("## Generation Prompt", 1)[0].split("## Characters", 1)[-1]:
                # Invocation in generation prompt is expected; only flag a bare list
                # line between reference IDs and Action/Visual sections.
                if re.search(rf"^\s*-?\s*{re.escape(inv)}\s*$", s["text"], re.M):
                    errors.append(f"{episode_id}/{sid}: undeclared bare character entry {inv}")

    if lock_path and lock_path.exists():
        lock = json.loads(read(lock_path))
        if lock.get("runtime_seconds") != total:
            errors.append(f"{episode_id}: locked runtime {lock.get('runtime_seconds')}s != map total {total}s")
        if lock.get("scene_count") != len(rows):
            errors.append(f"{episode_id}: locked scene count {lock.get('scene_count')} != map count {len(rows)}")
    return errors


def validate_fixture(path: Path) -> list[str]:
    data = json.loads(read(path))
    errors = []
    runtime = data.get("runtime_seconds")
    scenes = data.get("scenes", [])
    shots = data.get("generation_shots", [])
    if not isinstance(runtime, int) or runtime <= 0:
        errors.append("fixture: runtime_seconds must be a positive integer")
    if not scenes:
        errors.append("fixture: scenes must not be empty")
    if sum(s.get("duration_seconds", 0) for s in scenes) != runtime:
        errors.append("fixture: scene durations do not equal runtime")
    scene_ids = {s.get("scene_id") for s in scenes}
    if len(scene_ids) != len(scenes):
        errors.append("fixture: duplicate scene IDs")
    for shot in shots:
        if shot.get("scene_id") not in scene_ids:
            errors.append(f"fixture: shot references unknown scene {shot.get('scene_id')}")
        if not shot.get("prompt") or not shot.get("camera") or not shot.get("assembly"):
            errors.append(f"fixture: incomplete generation brief {shot.get('shot_id')}")
    return errors


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, default=Path(__file__).resolve().parents[1])
    parser.add_argument("--episode", default="EP-001")
    parser.add_argument("--fixture", type=Path)
    args = parser.parse_args()
    errors = []
    lock = args.repo / "03_CONTENT" / "Episodes" / args.episode / f"{args.episode}_LOCK.json"
    errors.extend(validate_episode(args.repo, args.episode, lock))
    if args.fixture:
        errors.extend(validate_fixture(args.fixture))
    if errors:
        print("PRODUCTION VALIDATION: FAIL")
        for error in errors:
            print(f"- {error}")
        return 1
    print(f"PRODUCTION VALIDATION: PASS ({args.episode})")
    if args.fixture:
        print(f"PRODUCTION FIXTURE: PASS ({args.fixture})")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
