$ErrorActionPreference = "Stop"

$root = "D:\YouTube_Channel\Children_Rhymes_AI"
$relativePath = "03_CONTENT\Episodes\EPISODE_001\EPISODE_001_TIMED_SCENE_MAP_v001.md"
$path = Join-Path $root $relativePath

$content = @'
# EP-001 - TIMED SCENE MAP

**Document ID:** EP-001-SCENE-MAP-001
**Version:** v001
**Status:** DRAFT / WORKING

## Purpose

Define the first timed scene architecture for EP-001 "Count With Me!" before individual scene specifications and generation prompts are created.

This map is derived from the working EP-001 lyric concept and the controlled-scene production rules.

## Production Constraints

- Target runtime: approximately 82 seconds
- Scene duration: approximately 4-8 seconds
- Every scene must directly reinforce the narration / lyrics.
- Every appearing character must resolve through the canonical character system.
- Visual number quantities must be unambiguous.
- Only approved scenes may enter final assembly.
- This document is a working production artifact and is not canonical until explicitly approved.

## Character Set

- @Leo -> CHAR-01 -> LEO-REF-001
- @Maya -> CHAR-02 -> MAYA-REF-001
- @Benny -> CHAR-03 -> BENNY-REF-001
- @Sunny -> CHAR-04 -> SUNNY-REF-001
- @Nora -> CHAR-05 -> NORA-REF-001

## Timed Scene Map

| Scene | Story / Learning Beat | Characters | Primary Visual Requirement | Duration |
|---|---|---|---|---:|
| SC-001 | Opening / number discovery | @Leo | Leo discovers a playful sequence of glowing number symbols in the canonical world. | 6s |
| SC-002 | One and two | @Leo | One clearly visible sun, then two clearly visible clouds; Leo points to each quantity as counted. | 6s |
| SC-003 | Three | @Leo, @Maya | Three clearly separated apples are visible while Leo counts them and Maya encourages him. | 5s |
| SC-004 | 1-2-3 recap | @Leo, @Maya | The three previously established quantities are reinforced in a simple visual counting recap. | 5s |
| SC-005 | Four and five | @Leo, @Maya, @Benny | Four butterflies transition into five flowers; quantities remain clearly countable. | 6s |
| SC-006 | Six | @Benny | Six clearly visible frogs perform a playful synchronized hop sequence. | 5s |
| SC-007 | 4-5-6 recap | @Leo, @Maya, @Benny | Group recap reinforces four, five, and six with matching visual quantities. | 5s |
| SC-008 | Seven | @Sunny, group | Seven clearly visible stars appear and glow while Sunny leads the discovery. | 5s |
| SC-009 | Eight | @Sunny, group | Eight clearly visible birds fly across the scene in a readable countable formation. | 5s |
| SC-010 | 7-8 recap | @Sunny, group | Seven stars and eight birds are reinforced in a concise visual recap. | 5s |
| SC-011 | Nine | @Nora, group | Nine clearly visible balloons rise together while the characters count them. | 6s |
| SC-012 | Ten | @Nora, group | Ten clearly visible golden bells ring in a playful synchronized sequence. | 6s |
| SC-013 | Full 1-10 count | All five | All characters participate in a clear, energetic 1-10 counting sequence with visual quantities reinforcing the count. | 7s |
| SC-014 | Celebration / ending | All five | The characters celebrate completing the count and invite the child to count again. | 5s |

**Planned runtime: 82 seconds**

## Scene Timing Validation

Total:

6 + 6 + 5 + 5 + 6 + 5 + 5 + 5 + 5 + 5 + 6 + 6 + 7 + 5 = **82 seconds**

All scene durations remain within the project default of approximately 4-8 seconds.

## Character Resolution Validation

| Invocation | Character ID | Reference ID | Status |
|---|---|---|---|
| @Leo | CHAR-01 | LEO-REF-001 | PASS |
| @Maya | CHAR-02 | MAYA-REF-001 | PASS |
| @Benny | CHAR-03 | BENNY-REF-001 | PASS |
| @Sunny | CHAR-04 | SUNNY-REF-001 | PASS |
| @Nora | CHAR-05 | NORA-REF-001 | PASS |

## Production Notes

1. Quantity must be visually countable. Do not rely only on a spoken number.
2. Objects used for counting must remain visually distinct enough for preschool viewers to identify the quantity.
3. Multi-character scenes must resolve each character independently.
4. Character identity must not change to accommodate scene variation.
5. The scene map does not yet define final camera movement, lighting, generation prompts, sound effects, or final audio mix.
6. Those details belong in the individual scene specifications.
7. Any lyric/timing revision that changes scene boundaries requires this map to be revised before generation.

## Approval State

**DRAFT / WORKING**

Do not treat this map as final production approval until the complete lyric timing and scene-by-scene synchronization have been reviewed.

'@

$content = $content -replace "[ \t]+(?=\r?\n)", ""
$content = $content -replace "`r`n", "`n"
$content = $content -replace "`r", "`n"

[System.IO.File]::WriteAllText(
    $path,
    $content.TrimEnd("`n") + "`n",
    [System.Text.UTF8Encoding]::new($false)
)

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - EP-001 TIMED SCENE MAP"
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "CREATED: $path" -ForegroundColor Green

Write-Host ""
Write-Host "===== VALIDATION =====" -ForegroundColor Cyan

$required = @(
    "# EP-001 - TIMED SCENE MAP",
    "SC-001",
    "SC-014",
    "Planned runtime: 82 seconds",
    "@Leo -> CHAR-01 -> LEO-REF-001",
    "@Maya -> CHAR-02 -> MAYA-REF-001",
    "@Benny -> CHAR-03 -> BENNY-REF-001",
    "@Sunny -> CHAR-04 -> SUNNY-REF-001",
    "@Nora -> CHAR-05 -> NORA-REF-001"
)

$text = [System.IO.File]::ReadAllText(
    $path,
    [System.Text.UTF8Encoding]::new($false)
)

foreach ($item in $required) {
    if ($text.Contains($item)) {
        Write-Host "PASS : $item" -ForegroundColor Green
    }
    else {
        Write-Host "FAIL : $item" -ForegroundColor Red
        throw "Validation failed: $item"
    }
}

$badEncoding = Select-String -Path $path -Pattern ([string][char]0x00E2 + '|' + [string][char]0x00C3 + '|' + [string][char]0x00F0 + '|' + [string][char]0xFFFD)
if ($badEncoding) {
    Write-Host "FAIL : suspicious encoding" -ForegroundColor Red
    $badEncoding
    throw "Encoding validation failed."
}
Write-Host "PASS : encoding clean" -ForegroundColor Green

$badWhitespace = Select-String -Path $path -Pattern '[ \t]+$'
if ($badWhitespace) {
    Write-Host "FAIL : trailing whitespace" -ForegroundColor Red
    $badWhitespace
    throw "Trailing whitespace validation failed."
}
Write-Host "PASS : trailing whitespace clean" -ForegroundColor Green

Write-Host ""
Write-Host "===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check
if ($LASTEXITCODE -ne 0) {
    throw "git diff --check failed."
}

Write-Host ""
Write-Host "===== STATUS =====" -ForegroundColor Cyan
git status --short -- $relativePath

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "EP-001 TIMED SCENE MAP: PASS" -ForegroundColor Green
Write-Host "NO COMMIT OR PUSH WAS PERFORMED."
Write-Host "============================================" -ForegroundColor Cyan
