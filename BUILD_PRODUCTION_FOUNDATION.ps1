$ErrorActionPreference = "Stop"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - PRODUCTION FOUNDATION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

$root = (Get-Location).Path

if (-not (Test-Path -LiteralPath ".git" -PathType Container)) {
    throw "Not a Git repository. Run this script from D:\YouTube_Channel\Children_Rhymes_AI"
}

$production = Join-Path $root "02_PRODUCTION"
$constitutionDir = Join-Path $production "Constitution"

Write-Host "`n[1/6] Creating production directories..." -ForegroundColor Yellow

@(
    $production
    $constitutionDir
    (Join-Path $production "Video")
    (Join-Path $production "Visual")
    (Join-Path $production "Voice")
    (Join-Path $production "Music")
) | ForEach-Object {
    New-Item -ItemType Directory -Path $_ -Force | Out-Null
}

Write-Host "Directories ready." -ForegroundColor Green


function Write-SafeFile {
    param(
        [string]$Path,
        [string]$Content,
        [switch]$AllowEmptyTrackedFile
    )

    if (Test-Path -LiteralPath $Path -PathType Leaf) {

        $existing = Get-Content -LiteralPath $Path -Raw -Encoding UTF8

        if ($existing.Length -gt 0) {
            Write-Host "PRESERVED: $Path" -ForegroundColor DarkGray
            return
        }

        if (-not $AllowEmptyTrackedFile) {
            Write-Host "SKIPPED EMPTY FILE: $Path" -ForegroundColor Yellow
            return
        }
    }

    [System.IO.File]::WriteAllText(
        $Path,
        $Content.TrimEnd() + "`r`n",
        [System.Text.UTF8Encoding]::new($false)
    )

    Write-Host "CREATED: $Path" -ForegroundColor Green
}


Write-Host "`n[2/6] Creating Production Constitution..." -ForegroundColor Yellow

$productionConstitution = @"
# Children Rhymes AI — Production Constitution

**Document ID:** PROD-CONST-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the canonical production architecture for the Children Rhymes AI video generation system.

Production is based on controlled scenes that are independently specified, generated, reviewed, approved, and assembled into final videos.

## Authority Hierarchy

1. Master Universe Bible
2. Production Constitution
3. Character Bible
4. Character Generation Standard
5. Canonical Character References
6. Scene Specification
7. Scene-specific generation requirements

Lower-level instructions must never contradict higher-level canonical rules.

## Controlled Scene Production

AI video is generated as controlled scenes.

The final video is assembled from approved scenes.

Each scene must have:

- Scene ID
- Narration / lyrics
- Visual description
- Characters
- Action
- Environment
- Camera
- Duration
- Audio requirement
- Generation prompt
- QC status

## Scene Duration

Default scene duration is approximately 4–8 seconds.

A different duration requires explicit production justification.

## Character Identity

Character identity is controlled by:

Character Bible
→ Canonical References
→ Character Generation Standard
→ Character Master Generation Prompt

Scene-specific instructions may change action, pose, expression, environment, lighting, and camera, but must not redesign the character.

## Character Invocation

External generation systems may use character invocation syntax such as:

`@Leo`

The repository defines the canonical meaning of that invocation.

Example:

`@Leo`
→ `CHAR-01`
→ `LEO-REF-001`
→ Leo Character Bible
→ Leo canonical references
→ Leo Master Generation Prompt v002

The repository does not implement Google Flow invocation syntax.

## Audio / Visual Synchronization

Visual action must directly reinforce narration or lyrics.

Visuals should teach, explain, or reinforce the words rather than merely decorate them.

## Quality Control

Generated scenes must be reviewed before final assembly.

Only approved scenes may enter final video assembly.

## Production Asset Separation

Production outputs are separate from canonical character references.

A generated scene asset does not become canonical merely because it looks correct.

Canonical character changes require an explicit character-design revision.

## Directory Architecture

02_PRODUCTION/

- Constitution/
- Video/
- Visual/
- Voice/
- Music/

Production documents and generated assets must remain traceable to their production purpose.

## Rights

Audio and visual assets must have known rights and commercial-use status before publishing.

Third-party copyrighted material must not be used without appropriate rights.

## Revision Policy

This constitution is CANONICAL / LOCKED.

Changes require an explicit production-system revision.

## Canonical Principle

**Production generates controlled scenes while preserving the canonical universe.**
"@

Write-SafeFile `
    -Path (Join-Path $root "Production Constitution.md") `
    -Content $productionConstitution `
    -AllowEmptyTrackedFile


Write-Host "`n[3/6] Creating Scene Specification Standard..." -ForegroundColor Yellow

$sceneStandard = @"
# Scene Specification Standard

**Document ID:** SCENE-SPEC-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the canonical structure of a production scene.

## Required Scene Fields

Every scene requires:

1. Scene ID
2. Narration / lyrics
3. Visual description
4. Characters
5. Action
6. Environment
7. Camera
8. Duration
9. Audio requirement
10. Generation prompt
11. QC status

## Scene ID

Every scene receives a unique stable identifier.

Example:

`SC-001`

## Narration / Lyrics

Record the exact narration or lyrics associated with the scene.

Visual action must directly reinforce the narration or lyrics.

## Visual Description

Describe what must be visible on screen.

The description must not contradict canonical character identity or world rules.

## Characters

Every appearing character must be explicitly identified.

Each character record must resolve to:

- Character name
- Character ID
- Canonical Reference ID

Example:

Leo
CHAR-01
LEO-REF-001

## Action

Define the action performed by each character and important scene object.

Action may vary.

Character identity may not.

## Environment

Define location, surroundings, important objects, and relevant environmental conditions.

## Camera

Define framing, position, perspective, and movement.

Camera variation must not change character anatomy or identity.

## Duration

Default duration:

**approximately 4–8 seconds**

## Audio Requirement

Specify applicable:

- Narration
- Lyrics
- Character voice
- Dialogue
- Sound effects
- Music
- Silence

## Generation Prompt

The generation prompt must preserve:

- Canonical character identity
- Canonical references
- Action
- Environment
- Camera
- Lighting
- Duration
- Audio/visual synchronization

## QC Status

Minimum states:

- DRAFT
- GENERATED
- REVIEW
- APPROVED
- REJECTED

Only APPROVED scenes may enter final assembly.

## Character Resolution

External systems may invoke:

`@Leo`
`@Maya`
`@Benny`
`@Sunny`
`@Nora`

Canonical mappings are:

- @Leo → CHAR-01 → LEO-REF-001
- @Maya → CHAR-02 → MAYA-REF-001
- @Benny → CHAR-03 → BENNY-REF-001
- @Sunny → CHAR-04 → SUNNY-REF-001
- @Nora → CHAR-05 → NORA-REF-001

The repository defines canonical identity.

The external generation system owns the invocation mechanism.

## Multi-Character Scenes

Each character must receive its own canonical reference.

Never use one character's reference to generate another character.

Preserve:

- Individual identity
- Relative scale
- Character-specific colors
- Accessories
- Spatial logic

## Character Consistency

Scene variation may change:

- Pose
- Expression
- Gesture
- Action
- Camera
- Environment
- Lighting
- Time of day
- Scene-specific props
- Character interaction

Scene variation must not change:

- Face
- Eyes
- Hair / feathers / fur
- Colors
- Markings
- Body proportions
- Silhouette
- Anatomy
- Locked accessories
- Age appearance
- Character-specific design

## Audio / Visual Synchronization

Visual action must directly reinforce narration or lyrics.

Example:

Narration: "Jump, jump, jump!"

Visual action: character visibly jumps.

## Scene Approval

Before approval verify:

- Correct Scene ID
- Correct narration / lyrics
- Correct characters
- Correct Character IDs
- Correct Reference IDs
- Correct identity
- Correct action
- Correct environment
- Correct camera
- Correct duration
- Correct audio requirement
- Synchronization
- No identity mixing
- No unauthorized redesign
- Generation prompt exists
- QC status exists

## Canonical Reference Rule

Generated scene assets are production outputs.

They do not automatically become canonical character references.

Canonical reference changes require explicit character-design revision.

## Revision Policy

This standard is CANONICAL / LOCKED.

Changes require explicit production-system revision.

## Canonical Principle

**Every scene changes the situation, never the canonical character.**
"@

Write-SafeFile `
    -Path (Join-Path $constitutionDir "SCENE_SPECIFICATION_STANDARD_v001.md") `
    -Content $sceneStandard


Write-Host "`n[4/6] Creating Character Invocation Standard..." -ForegroundColor Yellow

$invocationStandard = @"
# Character Invocation Standard

**Document ID:** CHAR-INV-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define how canonical character identity is resolved when an external generation workflow invokes a character.

## Scope

This standard defines the repository-side identity contract.

It does not implement or replace the invocation syntax of Google Flow or another external generation platform.

## Canonical Resolution

| Invocation | Character ID | Reference ID |
|---|---|---|
| @Leo | CHAR-01 | LEO-REF-001 |
| @Maya | CHAR-02 | MAYA-REF-001 |
| @Benny | CHAR-03 | BENNY-REF-001 |
| @Sunny | CHAR-04 | SUNNY-REF-001 |
| @Nora | CHAR-05 | NORA-REF-001 |

## Resolution Chain

Every invocation represents:

Invocation
→ Character ID
→ Reference ID
→ Character Bible
→ Canonical References
→ Master Generation Prompt v002

## Identity Lock

Resolving a character must preserve the complete canonical identity defined by the Character Bible and canonical reference package.

## Scene Variation

Invocation does not lock:

- Pose
- Expression
- Gesture
- Action
- Camera
- Environment
- Lighting

These remain scene-specific.

## Identity Protection

Invocation must never result in:

- Character substitution
- Identity mixing
- Unauthorized redesign
- Species change
- Age change
- Proportion change
- Color change
- Accessory change
- Anatomy change

## Multi-Character Scenes

Every invoked character must resolve independently.

One character's reference must never be substituted for another character.

## Authority

Character Bible and canonical references remain authoritative.

Invocation is a resolution mechanism, not a new source of character identity.

## Revision Policy

This standard is CANONICAL / LOCKED.

Changes require explicit production-system revision.
"@

Write-SafeFile `
    -Path (Join-Path $constitutionDir "CHARACTER_INVOCATION_STANDARD_v001.md") `
    -Content $invocationStandard


Write-Host "`n[5/6] Creating Production Workflow Standard..." -ForegroundColor Yellow

$workflowStandard = @"
# Production Workflow Standard

**Document ID:** PROD-WF-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the controlled lifecycle of a Children Rhymes AI production scene.

## Workflow

1. Create scene specification.
2. Resolve canonical characters.
3. Apply Character Bibles.
4. Apply canonical references.
5. Define narration / lyrics.
6. Define visual description.
7. Define action.
8. Define environment.
9. Define camera.
10. Define duration.
11. Define audio requirement.
12. Generate production prompt.
13. Generate scene asset.
14. Perform QC.
15. Reject or regenerate failed assets.
16. Approve passing scene.
17. Assemble approved scenes into final video.

## Character Resolution

Character identity must resolve through:

Invocation
→ Character ID
→ Reference ID
→ Character Bible
→ Canonical references
→ Master Generation Prompt

## Scene Generation

Generation may vary the situation while preserving canonical identity.

## Quality Control

A failed locked identity element requires rejection or regeneration.

## Approval

Only explicitly approved scenes may enter final video assembly.

## Canonical Assets

Generated production outputs remain separate from canonical character references unless explicitly approved through the character revision process.

## Rights

Audio and visual assets must have known rights and commercial-use status before publishing.

## Revision Policy

This standard is CANONICAL / LOCKED.
"@

Write-SafeFile `
    -Path (Join-Path $constitutionDir "PRODUCTION_WORKFLOW_STANDARD_v001.md") `
    -Content $workflowStandard


Write-Host "`n[6/6] Creating directory README files..." -ForegroundColor Yellow

$readmes = @{
    "Constitution" = @"
# Production Constitution

Canonical production architecture, scene specifications, invocation rules, and workflow standards.
"@
    "Video" = @"
# Video Production

Approved and in-progress video production assets.

Scene generation outputs must remain traceable to their scene specification.
"@
    "Visual" = @"
# Visual Production

Production visual assets generated from approved scene specifications.

Canonical character references remain under 01_UNIVERSE/Characters.
"@
    "Voice" = @"
# Voice Production

Voice assets and voice-production records.

Voice identity and rights information must remain traceable.
"@
    "Music" = @"
# Music Production

Music assets, arrangements, and production records.

Rights and commercial-use status must be recorded before publishing.
"@
}

foreach ($name in $readmes.Keys) {
    Write-SafeFile `
        -Path (Join-Path $production "$name\README.md") `
        -Content $readmes[$name]
}


Write-Host "`n============================================" -ForegroundColor Cyan
Write-Host " VALIDATING PRODUCTION FOUNDATION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

$requiredFiles = @(
    "Production Constitution.md"
    "02_PRODUCTION\Constitution\SCENE_SPECIFICATION_STANDARD_v001.md"
    "02_PRODUCTION\Constitution\CHARACTER_INVOCATION_STANDARD_v001.md"
    "02_PRODUCTION\Constitution\PRODUCTION_WORKFLOW_STANDARD_v001.md"
    "02_PRODUCTION\Video\README.md"
    "02_PRODUCTION\Visual\README.md"
    "02_PRODUCTION\Voice\README.md"
    "02_PRODUCTION\Music\README.md"
)

$allFilesPass = $true

foreach ($file in $requiredFiles) {
    $full = Join-Path $root $file

    Write-Host "$file : " -NoNewline

    if (Test-Path -LiteralPath $full -PathType Leaf) {
        Write-Host "PASS" -ForegroundColor Green
    }
    else {
        Write-Host "FAIL" -ForegroundColor Red
        $allFilesPass = $false
    }
}

Write-Host "`n===== CHARACTER REFERENCES =====" -ForegroundColor Cyan

$characters = @{
    "Leo"   = "LEO-REF-001"
    "Maya"  = "MAYA-REF-001"
    "Benny" = "BENNY-REF-001"
    "Sunny" = "SUNNY-REF-001"
    "Nora"  = "NORA-REF-001"
}

$characterPass = $true

foreach ($character in $characters.Keys) {

    $charDir = Join-Path $root "01_UNIVERSE\Characters\$character"
    $bible = Join-Path $root "01_UNIVERSE\Characters\$character.md"
    $promptDir = Join-Path $charDir "Prompts"
    $referenceDir = Join-Path $charDir "References"

    Write-Host "`n$character" -ForegroundColor Yellow

    if (-not (Test-Path -LiteralPath $bible -PathType Leaf)) {
        Write-Host "  Bible      : FAIL" -ForegroundColor Red
        $characterPass = $false
        continue
    }

    $prompt = Get-ChildItem `
        -LiteralPath $promptDir `
        -Filter "*_Master_Generation_Prompt_v002.md" `
        -File |
        Select-Object -First 1

    if (-not $prompt) {
        Write-Host "  v002       : FAIL" -ForegroundColor Red
        $characterPass = $false
        continue
    }

    $bibleText = Get-Content -LiteralPath $bible -Raw -Encoding UTF8
    $promptText = Get-Content -LiteralPath $prompt.FullName -Raw -Encoding UTF8
    $refID = $characters[$character]

    Write-Host "  Bible      : " -NoNewline
    if ($bibleText.Contains($refID)) {
        Write-Host "PASS" -ForegroundColor Green
    } else {
        Write-Host "FAIL" -ForegroundColor Red
        $characterPass = $false
    }

    Write-Host "  v002       : " -NoNewline
    if ($promptText.Contains($refID)) {
        Write-Host "PASS" -ForegroundColor Green
    } else {
        Write-Host "FAIL" -ForegroundColor Red
        $characterPass = $false
    }

    Write-Host "  References  : " -NoNewline
    if (Test-Path -LiteralPath $referenceDir -PathType Container) {
        $count = @(Get-ChildItem -LiteralPath $referenceDir -File).Count

        if ($count -ge 4) {
            Write-Host "PASS ($count files)" -ForegroundColor Green
        }
        else {
            Write-Host "REVIEW ($count files)" -ForegroundColor Yellow
        }
    }
    else {
        Write-Host "FAIL" -ForegroundColor Red
        $characterPass = $false
    }
}

Write-Host "`n===== GIT DIFF CHECK =====" -ForegroundColor Cyan

git diff --check

if ($LASTEXITCODE -eq 0) {
    Write-Host "git diff --check : PASS" -ForegroundColor Green
}
else {
    Write-Host "git diff --check : FAIL" -ForegroundColor Red
}

Write-Host "`n===== GIT STATUS =====" -ForegroundColor Cyan

git status --short

Write-Host "`n============================================" -ForegroundColor Cyan

if ($allFilesPass -and $characterPass) {
    Write-Host "PRODUCTION FOUNDATION: PASS" -ForegroundColor Green
}
else {
    Write-Host "PRODUCTION FOUNDATION: REVIEW REQUIRED" -ForegroundColor Yellow
}

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "`nNO COMMIT OR PUSH WAS PERFORMED." -ForegroundColor Yellow
