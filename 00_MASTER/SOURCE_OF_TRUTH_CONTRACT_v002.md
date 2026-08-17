# Children Rhymes AI Studio — Source of Truth Contract v002

**Status:** CANONICAL
**Version:** v002
**Scope:** All episodes and production workflows

## 1. Purpose

This contract defines which artifacts are authoritative, which are derived, and how episode-specific locks are represented. It replaces any assumption that one episode's runtime or scene count is a universal production template.

## 2. Authority hierarchy

1. `00_MASTER/` — universe-level rules and production constitution.
2. `01_UNIVERSE/` — canonical characters, references, visual identity, and generation standards.
3. `03_CONTENT/` — episode concept, approved script/rhyme, timing, story beats, and episode-specific locks.
4. `02_PRODUCTION/` — schemas, validation standards, generation/assembly standards.
5. Episode scene/shot specifications — execution plans derived from the approved content.
6. Generation outputs, manifests, QC reports, and assembly files — derived artifacts only.

A lower layer may reference a higher layer, but must not silently redefine it.

## 3. Rhyme-driven production model

Every episode is planned from its actual rhyme/audio timing. The following are **episode-derived values**, not global constants:

- master runtime
- number of scenes
- scene durations
- number of generation shots
- shot durations
- character participation
- visual beats

The production system must never pad, compress, or split a rhyme merely to satisfy a global scene-count or runtime template unless an explicit episode-level creative decision approves that change.

## 4. Scene vs generation shot

A **scene** is a narrative/visual beat tied to the rhyme/story.

A **generation shot** is an executable video-generation unit designed for the selected generation model. A scene may contain one or more generation shots.

Therefore:

`Rhyme → Audio Timing → Story Beats → Scenes → Generation Shots → Generated Media → Assembly`

Generation-model duration limits must never redefine the narrative scene structure.

## 5. Episode-specific locks

An episode may explicitly lock values such as runtime, scene count, timing, approved lyrics, or scene order. Those locks apply only to that episode unless separately promoted into a master production rule.

### EP-001 exception

`Count With Me!` is an approved episode-specific lock:

- Runtime: **77 seconds**
- Scenes: **14**

These values must be validated exactly for EP-001 and must not be used as global defaults for future episodes.

## 6. Validation philosophy

Validation is deterministic and non-mutating.

A validator may:

- parse authoritative artifacts;
- resolve references;
- compare derived values;
- report errors and warnings;
- reject invalid builds.

A validator/build step must **never repair, rewrite, normalize, or silently alter authoritative source files**.

Correct workflow:

`Source → Validate → PASS/FAIL`

Not:

`Source → Repair → Validate`

## 7. Character authority

Canonical character invocations must resolve through the existing universe chain:

`@Character → Character ID → Canonical Reference ID → Character Bible → Canonical Generation Standard`

The canonical universe currently defines:

| Invocation | Character ID | Reference ID |
|---|---|---|
| `@Leo` | `CHAR-01` | `LEO-REF-001` |
| `@Maya` | `CHAR-02` | `MAYA-REF-001` |
| `@Benny` | `CHAR-03` | `BENNY-REF-001` |
| `@Sunny` | `CHAR-04` | `SUNNY-REF-001` |
| `@Nora` | `CHAR-05` | `NORA-REF-001` |

## 8. Google Flow production target

Google Flow is the current production video-generation target. Generation briefs must be model-aware and actionable, including where applicable:

- required canonical character/reference assets or Ingredients;
- visual objective;
- staging and action;
- camera/framing/movement;
- continuity requirements;
- generation prompt;
- negative constraints;
- target source duration;
- relationship to the parent scene;
- assembly trim/cut requirements.

The repository must not rely on generic prompts that omit these production controls.

## 9. Master and Shorts

The primary composition is a 16:9 YouTube master. Shorts are separate 9:16 editorial compositions derived from approved story moments; they are not assumed to be simple crops of the 16:9 master.

## 10. Required invariant

A future episode must be able to have a different runtime, different scene count, different scene durations, and different generation-shot count without changing validator source code merely to accommodate those values.
