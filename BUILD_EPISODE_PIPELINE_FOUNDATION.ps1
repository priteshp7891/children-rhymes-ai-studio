$ErrorActionPreference = "Stop"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - EPISODE PIPELINE FOUNDATION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

$root = (Get-Location).Path
$episodesRoot = Join-Path $root "03_CONTENT\Episodes"
$episodeRoot = Join-Path $episodesRoot "EPISODE_001"
$scenesRoot = Join-Path $episodeRoot "Scenes"

Write-Host "ROOT = $root" -ForegroundColor Green

# ------------------------------------------------------------
# Helpers
# ------------------------------------------------------------

function Write-Utf8File {
    param(
        [string]$Path,
        [string]$Content
    )

    $parent = Split-Path -Parent $Path
    if (-not (Test-Path -LiteralPath $parent -PathType Container)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }

    $clean = $Content -replace "[ \t]+(?=\r?\n)", ""
    $clean = $clean -replace "`r`n", "`n"
    $clean = $clean -replace "`r", "`n"
    $clean = $clean.TrimEnd("`n") + "`n"

    [System.IO.File]::WriteAllText(
        $Path,
        $clean,
        [System.Text.UTF8Encoding]::new($false)
    )

    Write-Host "CREATED/UPDATED: $Path" -ForegroundColor Green
}

# ------------------------------------------------------------
# 1. Directories
# ------------------------------------------------------------

Write-Host "`n[1/5] Creating episode directories..." -ForegroundColor Yellow

New-Item -ItemType Directory -Path $episodesRoot -Force | Out-Null
New-Item -ItemType Directory -Path $episodeRoot -Force | Out-Null
New-Item -ItemType Directory -Path $scenesRoot -Force | Out-Null

Write-Host "Directories ready." -ForegroundColor Green

# ------------------------------------------------------------
# 2. Episode Specification Standard
# ------------------------------------------------------------

$episodeStandard = @'
# Episode Specification Standard

**Document ID:** EPISODE-SPEC-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the canonical structure of an episode before script, storyboard, scene generation, and final assembly.

An episode is a controlled production unit. It must have a stable identity, learning/story objective, approved script, scene plan, and production status.

## Required Episode Fields

Every episode requires:

1. Episode ID
2. Working title
3. Content type
4. Audience
5. Learning / story objective
6. Core concept
7. Final lyrics / narration status
8. Character roster
9. Environment requirements
10. Scene count
11. Scene specification status
12. Audio status
13. Visual status
14. QC status
15. Approval status

## Episode ID

Every episode receives a stable identifier.

Example:

EP-001

The identifier must not be silently reused for another episode.

## Content Type

Examples include:

- Original educational rhyme
- Original story song
- Original counting song
- Original alphabet song
- Original concept song

The episode specification must identify the actual content type.

## Audience

Define the intended child age range and any relevant educational level.

Do not infer an audience from the title alone.

## Learning / Story Objective

Every episode must have a clear objective.

The objective must be understandable enough to guide:

- lyrics
- visual action
- scene selection
- repetition
- educational reinforcement

## Core Concept

Describe the single central idea of the episode.

Avoid combining unrelated learning objectives unless explicitly justified.

## Script Status

The episode must distinguish between:

- DRAFT
- REVIEW
- APPROVED

Only an APPROVED script may become the authoritative input for scene breakdown.

## Character Roster

List every canonical character required by the episode.

Each character must resolve through the repository character system:

Invocation
-> Character ID
-> Reference ID
-> Character Bible
-> Canonical References
-> Master Generation Prompt v002

External systems such as Google Flow own their invocation mechanism.

The repository owns canonical identity.

## Environment Requirements

Identify required canonical environments, locations, reusable props, and scene constraints.

Do not invent canonical environments inside an episode without following the world/environment system.

## Scene Count

Scene count is derived from the approved script and visual rhythm.

Do not force a fixed number of scenes before the script is approved.

## Scene Specification Status

Minimum states:

- NOT_STARTED
- IN_PROGRESS
- REVIEW
- APPROVED

Only APPROVED scene specifications may enter generation.

## Production Status

Recommended episode lifecycle:

IDEA
-> SPECIFIED
-> SCRIPT_DRAFT
-> SCRIPT_APPROVED
-> STORYBOARD_APPROVED
-> SCENES_READY
-> GENERATION
-> QC
-> ASSEMBLY
-> PUBLISHED

## Approval Rule

An episode is not production-ready merely because its script exists.

The required upstream approvals must be complete before downstream generation.

## Traceability

Every scene must be traceable back to:

Episode ID
-> Script
-> Scene ID
-> Character resolution
-> Generation output
-> QC result

## Canonical Character Rule

Episode requirements may select characters and actions.

They may not redesign canonical characters.

Character identity remains governed by the Character Bible, canonical references, Character Generation Standard, and Master Generation Prompt v002.

## Revision Policy

This standard is CANONICAL / LOCKED.

Changes require an explicit production-system revision.

## Canonical Principle

**An episode defines what the production must make; scene specifications define exactly how each controlled scene must be produced.**
'@

# ------------------------------------------------------------
# 3. Content-to-Scene Pipeline Standard
# ------------------------------------------------------------

$contentSceneStandard = @'
# Content-to-Scene Pipeline Standard

**Document ID:** CONTENT-SCENE-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the controlled bridge between an approved episode/script and production scene specifications.

This document prevents the content layer from bypassing the production scene system.

## Pipeline

Approved Episode
-> Approved Script
-> Story Beats
-> Scene Breakdown
-> Scene Specification
-> Character Resolution
-> Generation Prompt
-> External Generation
-> Scene QC
-> Approved Scene
-> Final Assembly

## Stage 1: Approved Episode

The episode specification establishes:

- Episode ID
- objective
- characters
- content type
- production requirements

No scene generation begins from an unapproved episode definition.

## Stage 2: Approved Script

The script is the authoritative source for:

- lyrics
- narration
- dialogue
- sequence
- repetition
- educational content

Visual generation must not invent a different educational meaning.

## Stage 3: Story Beats

Break the approved script into visual beats.

Each beat must answer:

- What is being said or sung?
- What must the child see?
- What action reinforces the words?
- Which characters are required?
- What changes from the previous beat?

## Stage 4: Scene Breakdown

Convert story beats into controlled scenes.

Each scene receives a stable Scene ID.

Example:

SC-001
SC-002
SC-003

A scene may cover one beat or a tightly connected sequence when the action remains visually coherent.

## Stage 5: Scene Specification

Each scene must contain the fields defined by the Scene Specification Standard.

At minimum:

- Scene ID
- narration / lyrics
- visual description
- characters
- action
- environment
- camera
- duration
- audio requirement
- generation prompt
- QC status

## Stage 6: Character Resolution

For every character in a scene, resolve:

Invocation
-> Character ID
-> Reference ID

Canonical mappings:

@Leo -> CHAR-01 -> LEO-REF-001
@Maya -> CHAR-02 -> MAYA-REF-001
@Benny -> CHAR-03 -> BENNY-REF-001
@Sunny -> CHAR-04 -> SUNNY-REF-001
@Nora -> CHAR-05 -> NORA-REF-001

The repository does not implement Google Flow invocation.

It defines the canonical identity contract that an external generation system must respect.

## Stage 7: Generation Prompt

The generation prompt is produced only after scene and character resolution.

It must preserve:

- canonical character identity
- canonical reference identity
- scene action
- environment
- camera
- lighting
- duration
- audio/visual synchronization

The scene prompt may change the situation.

It may not redesign the character.

## Stage 8: External Generation

Generation occurs in the selected external generation platform.

The repository records the production specification and resulting asset metadata.

The repository does not claim control over external platform behavior.

## Stage 9: Scene QC

A generated scene must be reviewed against:

- narration / lyrics
- character identity
- action
- environment
- camera
- duration
- synchronization
- anatomy
- identity mixing
- unauthorized redesign
- audio/visual quality

Failed scenes are rejected or regenerated.

## Stage 10: Approval

Only APPROVED scenes may enter final assembly.

Generated does not mean approved.

Approved does not mean canonical character reference.

## Traceability Contract

Every production scene must remain traceable:

Episode ID
-> Script version
-> Scene ID
-> Character IDs
-> Reference IDs
-> Generation output
-> QC result
-> Approval

## Canonical Principle

**Content determines meaning. Scene specification determines controlled visual execution.**
'@

# ------------------------------------------------------------
# 4. Episode Template
# ------------------------------------------------------------

$episodeTemplate = @'
# Episode [EP-___] — [Working Title]

**Episode ID:** EP-___
**Version:** v001
**Status:** IDEA

## 1. Working Title

[Title]

## 2. Content Type

[Original educational rhyme / story song / other]

## 3. Audience

[Age range / educational level]

## 4. Learning / Story Objective

[What should the child learn, understand, remember, or experience?]

## 5. Core Concept

[Single central concept]

## 6. Script Status

NOT_STARTED

## 7. Final Lyrics / Narration

[Not yet approved]

## 8. Character Roster

List only characters actually required.

| Invocation | Character ID | Reference ID | Role |
|---|---|---|---|
| [@Character] | [CHAR-__] | [REF-___] | [Role] |

## 9. Environment Requirements

[Required environments and reusable props]

## 10. Scene Plan

| Scene ID | Script Beat | Characters | Purpose | Status |
|---|---|---|---|---|
| SC-001 | [Beat] | [Characters] | [Purpose] | NOT_STARTED |

## 11. Production Status

IDEA

## 12. QC Status

NOT_STARTED

## 13. Approval

Not approved.

## 14. Traceability

Episode ID:
EP-___

Script:
[Not assigned]

Scene specifications:
[Not assigned]

Generation outputs:
[Not assigned]

Final video:
[Not assigned]

## Revision Policy

Changes to an approved episode require explicit revision tracking.
'@

# ------------------------------------------------------------
# 5. Episode 001 workspace
# ------------------------------------------------------------

$episode001 = @'
# Episode EP-001 — Production Workspace

**Episode ID:** EP-001
**Version:** v001
**Status:** IDEA

This is the first real episode workspace.

No story, lyrics, characters, environments, or scenes are assumed here until explicitly approved.

## Current Stage

IDEA

## Required Next Inputs

1. Working title
2. Content type
3. Audience
4. Learning / story objective
5. Core concept
6. Draft lyrics / narration
7. Required canonical characters
8. Required environment(s)

## Pipeline

EP-001
-> Script
-> Story beats
-> Scene breakdown
-> Scene specifications
-> Character resolution
-> Generation prompts
-> External generation
-> QC
-> Approved scenes
-> Final assembly

## Rule

Do not generate production scenes directly from this workspace while the script and episode specification remain unapproved.

## Scene Directory

Scene specifications for EP-001 belong under:

EPISODE_001/Scenes/
'@

$sceneManifest = @'
# EP-001 Scene Manifest

**Episode ID:** EP-001
**Status:** NOT_STARTED

No scene specifications exist yet.

When the script is approved, create one controlled scene record per approved scene specification.

## Required Scene Record

Each scene must contain:

- Scene ID
- narration / lyrics
- visual description
- characters
- Character IDs
- Reference IDs
- action
- environment
- camera
- duration
- audio requirement
- generation prompt
- QC status

## Current Scenes

None.
'@

Write-Host "`n[2/5] Creating episode standards..." -ForegroundColor Yellow

Write-Utf8File (Join-Path $episodesRoot "EPISODE_SPECIFICATION_STANDARD_v001.md") $episodeStandard
Write-Utf8File (Join-Path $episodesRoot "CONTENT_TO_SCENE_PIPELINE_STANDARD_v001.md") $contentSceneStandard
Write-Utf8File (Join-Path $episodesRoot "EPISODE_TEMPLATE_v001.md") $episodeTemplate

Write-Host "`n[3/5] Creating EP-001 workspace..." -ForegroundColor Yellow

Write-Utf8File (Join-Path $episodeRoot "EPISODE_001.md") $episode001
Write-Utf8File (Join-Path $scenesRoot "SCENE_MANIFEST.md") $sceneManifest

Write-Host "`n[4/5] Validating..." -ForegroundColor Yellow

$requiredFiles = @(
    "03_CONTENT\Episodes\EPISODE_SPECIFICATION_STANDARD_v001.md",
    "03_CONTENT\Episodes\CONTENT_TO_SCENE_PIPELINE_STANDARD_v001.md",
    "03_CONTENT\Episodes\EPISODE_TEMPLATE_v001.md",
    "03_CONTENT\Episodes\EPISODE_001\EPISODE_001.md",
    "03_CONTENT\Episodes\EPISODE_001\Scenes\SCENE_MANIFEST.md"
)

$failed = $false

foreach ($relative in $requiredFiles) {
    $path = Join-Path $root $relative

    if (Test-Path -LiteralPath $path -PathType Leaf) {
        Write-Host "$relative : PASS" -ForegroundColor Green
    }
    else {
        Write-Host "$relative : FAIL" -ForegroundColor Red
        $failed = $true
    }
}

Write-Host "`n===== CHARACTER RESOLUTION CONTRACT CHECK =====" -ForegroundColor Cyan

$resolutionText = Get-Content `
    -LiteralPath (Join-Path $episodesRoot "CONTENT_TO_SCENE_PIPELINE_STANDARD_v001.md") `
    -Raw `
    -Encoding UTF8

$mappings = @(
    "@Leo -> CHAR-01 -> LEO-REF-001",
    "@Maya -> CHAR-02 -> MAYA-REF-001",
    "@Benny -> CHAR-03 -> BENNY-REF-001",
    "@Sunny -> CHAR-04 -> SUNNY-REF-001",
    "@Nora -> CHAR-05 -> NORA-REF-001"
)

foreach ($mapping in $mappings) {
    if ($resolutionText.Contains($mapping)) {
        Write-Host "$mapping : PASS" -ForegroundColor Green
    }
    else {
        Write-Host "$mapping : FAIL" -ForegroundColor Red
        $failed = $true
    }
}

Write-Host "`n===== FOUNDATION ENCODING CHECK =====" -ForegroundColor Cyan

$files = Get-ChildItem `
    -Path (Join-Path $episodesRoot "EPISODE_SPECIFICATION_STANDARD_v001.md"),
          (Join-Path $episodesRoot "CONTENT_TO_SCENE_PIPELINE_STANDARD_v001.md"),
          (Join-Path $episodesRoot "EPISODE_TEMPLATE_v001.md"),
          (Join-Path $episodeRoot "EPISODE_001.md"),
          (Join-Path $scenesRoot "SCENE_MANIFEST.md") `
    -File

$badEncoding = @(
    $files | Select-String -Pattern 'â|Ã|ð|�'
)

if ($badEncoding.Count -eq 0) {
    Write-Host "Encoding : PASS" -ForegroundColor Green
}
else {
    Write-Host "Encoding : FAIL" -ForegroundColor Red
    $badEncoding | Select-Object Path, LineNumber, Line
    $failed = $true
}

Write-Host "`n===== TRAILING WHITESPACE CHECK =====" -ForegroundColor Cyan

$badWhitespace = @()

foreach ($file in $files) {
    $lineNo = 0
    Get-Content -LiteralPath $file.FullName -Encoding UTF8 | ForEach-Object {
        $lineNo++
        if ($_ -match '[ \t]+$') {
            $badWhitespace += [PSCustomObject]@{
                Path = $file.FullName
                Line = $lineNo
            }
        }
    }
}

if ($badWhitespace.Count -eq 0) {
    Write-Host "Trailing whitespace : PASS" -ForegroundColor Green
}
else {
    Write-Host "Trailing whitespace : FAIL" -ForegroundColor Red
    $badWhitespace
    $failed = $true
}

Write-Host "`n===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check

if ($LASTEXITCODE -ne 0) {
    $failed = $true
}

Write-Host "`n===== STATUS =====" -ForegroundColor Cyan
git status --short

Write-Host "`n============================================"

if ($failed) {
    Write-Host "EPISODE PIPELINE FOUNDATION: FAIL" -ForegroundColor Red
    exit 1
}
else {
    Write-Host "EPISODE PIPELINE FOUNDATION: PASS" -ForegroundColor Green
    Write-Host "NO COMMIT OR PUSH WAS PERFORMED."
}
