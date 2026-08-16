$ErrorActionPreference = "Stop"
$root = (Get-Location).Path
Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - SCENE PRODUCTION LAYER" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "ROOT = $root"

function Write-Utf8NoBom {
    param([string]$RelativePath,[string]$Content)
    $path = Join-Path $root $RelativePath
    $parent = Split-Path -Parent $path
    New-Item -ItemType Directory -Path $parent -Force | Out-Null
    $Content = $Content -replace "`r`n","`n"
    $Content = $Content -replace "`r","`n"
    $Content = $Content.TrimEnd("`n") + "`n"
    [IO.File]::WriteAllText($path,$Content,[Text.UTF8Encoding]::new($false))
    Write-Host "CREATED/UPDATED: $RelativePath" -ForegroundColor Green
}

Write-Host "`n[1/5] Creating scene directories..." -ForegroundColor Yellow
@(
 "02_PRODUCTION\Scenes",
 "02_PRODUCTION\Scenes\Templates",
 "02_PRODUCTION\Scenes\Schema",
 "02_PRODUCTION\Scenes\Validation"
) | ForEach-Object { New-Item -ItemType Directory -Path (Join-Path $root $_) -Force | Out-Null }
Write-Host "Directories ready." -ForegroundColor Green

$schema = @'
# Scene Specification Schema

**Document ID:** SCENE-SCHEMA-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the machine-readable structure of a controlled production scene.

## Canonical Scene Object

```yaml
scene_id: SC-001
narration_lyrics: ""
visual_description: ""

characters:
  - invocation: "@Leo"
    character_id: "CHAR-01"
    reference_id: "LEO-REF-001"

action: ""
environment: ""

camera:
  framing: ""
  position: ""
  perspective: ""
  movement: ""

duration_seconds: 6

audio_requirement:
  narration: true
  lyrics: false
  character_voice: false
  dialogue: false
  sound_effects: []
  music: ""
  silence: false

generation_prompt: ""
qc_status: "DRAFT"
```

## Required Fields

Every scene requires:

- scene_id
- narration_lyrics
- visual_description
- characters
- action
- environment
- camera
- duration_seconds
- audio_requirement
- generation_prompt
- qc_status

## Character Resolution

| Invocation | Character ID | Reference ID |
|---|---|---|
| @Leo | CHAR-01 | LEO-REF-001 |
| @Maya | CHAR-02 | MAYA-REF-001 |
| @Benny | CHAR-03 | BENNY-REF-001 |
| @Sunny | CHAR-04 | SUNNY-REF-001 |
| @Nora | CHAR-05 | NORA-REF-001 |

## Duration

Default scene duration is approximately 4–8 seconds.

## QC States

DRAFT, GENERATED, REVIEW, APPROVED, REJECTED.

Only APPROVED scenes may enter final assembly.

## Identity Rule

Scene instructions may change pose, expression, gesture, action, camera, environment, lighting, time of day, props, and interaction.

They must not change face, eyes, hair/feathers/fur, colors, markings, proportions, silhouette, anatomy, locked accessories, age appearance, or character-specific design.

## Authority

Invocation → Character ID → Reference ID → Character Bible → Canonical References → Master Generation Prompt v002.

The repository defines the identity contract. External generation systems own their invocation mechanism.
'@

$template = @'
# Scene Specification

**Scene ID:** SC-___
**QC Status:** DRAFT

## Narration / Lyrics

[Exact narration or lyrics]

## Visual Description

[What must be visible on screen.]

## Characters

- Invocation:
- Character ID:
- Reference ID:

## Action

[Character and object actions.]

## Environment

[Location, surroundings, objects, conditions.]

## Camera

- Framing:
- Position:
- Perspective:
- Movement:

## Duration

**Seconds:** 6

Default range: approximately 4–8 seconds.

## Audio Requirement

- Narration:
- Lyrics:
- Character voice:
- Dialogue:
- Sound effects:
- Music:
- Silence:

## Generation Prompt

[Production-ready prompt preserving canonical identity.]

## QC Status

DRAFT

## QC Checklist

- [ ] Correct Scene ID
- [ ] Correct narration / lyrics
- [ ] Correct characters
- [ ] Correct Character IDs
- [ ] Correct Reference IDs
- [ ] Correct identity
- [ ] Correct action
- [ ] Correct environment
- [ ] Correct camera
- [ ] Correct duration
- [ ] Correct audio requirement
- [ ] Audio/visual synchronization
- [ ] No identity mixing
- [ ] No unauthorized redesign
- [ ] Generation prompt exists
- [ ] QC status exists

Only APPROVED scenes may enter final assembly.
'@

$resolver = @'
# Character Resolver Contract

**Document ID:** CHAR-RESOLVE-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the repository-side contract for resolving canonical characters when an external workflow invokes them.

This does not implement Google Flow. Google Flow remains the external invocation system.

## Canonical Resolution Table

| Invocation | Character ID | Reference ID | Character Bible |
|---|---|---|---|
| @Leo | CHAR-01 | LEO-REF-001 | `01_UNIVERSE/Characters/Leo.md` |
| @Maya | CHAR-02 | MAYA-REF-001 | `01_UNIVERSE/Characters/Maya.md` |
| @Benny | CHAR-03 | BENNY-REF-001 | `01_UNIVERSE/Characters/Benny.md` |
| @Sunny | CHAR-04 | SUNNY-REF-001 | `01_UNIVERSE/Characters/Sunny.md` |
| @Nora | CHAR-05 | NORA-REF-001 | `01_UNIVERSE/Characters/Nora.md` |

## Resolution Chain

Invocation → Character ID → Reference ID → Character Bible → Canonical References → Master Generation Prompt v002

## Rules

1. Every invocation resolves to exactly one Character ID.
2. Every Character ID resolves to exactly one Reference ID.
3. The Reference ID must belong to that character.
4. Character Bible is authoritative for character-specific identity.
5. Canonical references are the visual source of truth.
6. Master Generation Prompt v002 supplies generation constraints.
7. Scene instructions may change situation, never identity.
8. One character's reference must never be used for another.
9. Multi-character scenes resolve every character independently.
10. Failed resolution stops scene generation.

## Identity Lock

Preserve face, eyes, hair/feathers/fur, colors, markings, proportions, silhouette, anatomy, age appearance, locked accessories, and character-specific design.

## Failure Conditions

Reject resolution if invocation is unknown, IDs are missing, character/reference pairing is inconsistent, a foreign reference is detected, the canonical package is missing, or canonical status is not locked.
'@

$validation = @'
# Scene Validation Standard

**Document ID:** SCENE-QA-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Pre-Generation Validation

- [ ] Unique Scene ID
- [ ] Narration / lyrics
- [ ] Visual description
- [ ] Explicit characters
- [ ] Valid character resolution
- [ ] Correct Character IDs
- [ ] Correct Reference IDs
- [ ] Action
- [ ] Environment
- [ ] Camera
- [ ] Duration approximately 4–8 seconds
- [ ] Audio requirement
- [ ] Generation prompt
- [ ] Valid QC status

## Character Validation

For every character:

- [ ] Canonical invocation
- [ ] Correct Character ID
- [ ] Correct Reference ID
- [ ] Character Bible exists
- [ ] Canonical reference package exists
- [ ] Master Generation Prompt v002 exists
- [ ] Status is CANONICAL / LOCKED
- [ ] No foreign character reference

## Identity Validation

Reject if face, eyes, hair/feathers/fur, colors, markings, proportions, silhouette, anatomy, age appearance, locked accessories, or character-specific design changes.

## Allowed Scene Variation

Pose, expression, gesture, action, camera, environment, lighting, time of day, props, and interaction.

## Audio / Visual Synchronization

Visible action must directly reinforce narration or lyrics.

## Approval Gate

DRAFT → GENERATED → REVIEW → APPROVED

Failure path:

REVIEW → REJECTED → REGENERATE

Only APPROVED scenes enter final assembly.

## Canonical Asset Separation

Generated scene assets remain production outputs. They do not automatically become canonical character references.
'@

$readme = @'
# Scenes

Controlled production scene specifications live here.

## Pipeline

Scene Specification
→ Character Resolution
→ Character Bible + Canonical References
→ Generation Prompt
→ Generated Asset
→ QC
→ APPROVED
→ Final Assembly

## Directories

- `Templates/` reusable scene templates
- `Schema/` canonical scene structure
- `Validation/` scene and character validation contracts

## External Invocation

Google Flow remains responsible for its own `@Leo`, `@Maya`, `@Benny`, `@Sunny`, and `@Nora` invocation mechanism.

The repository defines the canonical meaning of those invocations.
'@

$example = @'
# SC-EXAMPLE-001 — Scene Specification Example

**Scene ID:** SC-EXAMPLE-001
**QC Status:** DRAFT

## Narration / Lyrics

"Jump, jump, jump!"

## Visual Description

Leo performs three playful jumps while preserving his canonical face, hairstyle, proportions, colors, anatomy, silhouette, age appearance, and locked accessories.

## Characters

- Invocation: @Leo
- Character ID: CHAR-01
- Reference ID: LEO-REF-001

## Action

Leo visibly jumps three times in rhythm with the narration.

## Environment

Use the approved episode environment.

## Camera

- Framing: medium-wide
- Position: character eye-level
- Perspective: natural cinematic perspective
- Movement: subtle forward tracking

## Duration

6 seconds.

## Audio Requirement

- Narration: yes
- Lyrics: no
- Character voice: no
- Dialogue: no
- Sound effects: three soft jump/landing sounds
- Music: episode background music
- Silence: no

## Generation Prompt

Use @Leo as the canonical character. Preserve CHAR-01 / LEO-REF-001 identity exactly. Keep face, eyes, hair, colors, proportions, silhouette, anatomy, age appearance, and locked accessories unchanged. Only vary the scene-specific pose and action. Leo performs three playful jumps synchronized with the narration "Jump, jump, jump!" Do not redesign, age, recolor, substitute, or mix character identity.

## QC Status

DRAFT
'@

Write-Host "`n[2/5] Creating scene schema..." -ForegroundColor Yellow
Write-Utf8NoBom "02_PRODUCTION\Scenes\Schema\SCENE_SPECIFICATION_SCHEMA_v001.md" $schema

Write-Host "`n[3/5] Creating scene template and example..." -ForegroundColor Yellow
Write-Utf8NoBom "02_PRODUCTION\Scenes\Templates\SCENE_SPECIFICATION_TEMPLATE_v001.md" $template
Write-Utf8NoBom "02_PRODUCTION\Scenes\Templates\SCENE_EXAMPLE_001.md" $example

Write-Host "`n[4/5] Creating resolver and validation standards..." -ForegroundColor Yellow
Write-Utf8NoBom "02_PRODUCTION\Scenes\Validation\CHARACTER_RESOLVER_CONTRACT_v001.md" $resolver
Write-Utf8NoBom "02_PRODUCTION\Scenes\Validation\SCENE_VALIDATION_STANDARD_v001.md" $validation
Write-Utf8NoBom "02_PRODUCTION\Scenes\README.md" $readme

Write-Host "`n[5/5] Validating..." -ForegroundColor Yellow
$required = @(
 "02_PRODUCTION\Scenes\README.md",
 "02_PRODUCTION\Scenes\Schema\SCENE_SPECIFICATION_SCHEMA_v001.md",
 "02_PRODUCTION\Scenes\Templates\SCENE_SPECIFICATION_TEMPLATE_v001.md",
 "02_PRODUCTION\Scenes\Templates\SCENE_EXAMPLE_001.md",
 "02_PRODUCTION\Scenes\Validation\CHARACTER_RESOLVER_CONTRACT_v001.md",
 "02_PRODUCTION\Scenes\Validation\SCENE_VALIDATION_STANDARD_v001.md"
)

$allPass = $true
foreach ($file in $required) {
    if (Test-Path -LiteralPath (Join-Path $root $file) -PathType Leaf) {
        Write-Host "$file : PASS" -ForegroundColor Green
    } else {
        Write-Host "$file : FAIL" -ForegroundColor Red
        $allPass = $false
    }
}

Write-Host "`n===== CHARACTER RESOLUTION AUDIT =====" -ForegroundColor Cyan
$mappings = @(
 @("@Leo","CHAR-01","LEO-REF-001"),
 @("@Maya","CHAR-02","MAYA-REF-001"),
 @("@Benny","CHAR-03","BENNY-REF-001"),
 @("@Sunny","CHAR-04","SUNNY-REF-001"),
 @("@Nora","CHAR-05","NORA-REF-001")
)
foreach ($m in $mappings) {
    if ($resolver.Contains($m[0]) -and $resolver.Contains($m[1]) -and $resolver.Contains($m[2])) {
        Write-Host "$($m[0]) -> $($m[1]) -> $($m[2]) : PASS" -ForegroundColor Green
    } else {
        Write-Host "$($m[0]) : FAIL" -ForegroundColor Red
        $allPass = $false
    }
}

Write-Host "`n===== MOJIBAKE QA =====" -ForegroundColor Cyan
$bad = Get-ChildItem (Join-Path $root "02_PRODUCTION\Scenes") -Recurse -File | Select-String -Pattern 'â'
if ($bad) {
    Write-Host "FAIL — mojibake detected" -ForegroundColor Red
    $allPass = $false
} else {
    Write-Host "PASS — no mojibake detected" -ForegroundColor Green
}

Write-Host "`n===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check

if ($allPass) {
    Write-Host "`nSCENE PRODUCTION LAYER: PASS" -ForegroundColor Green
} else {
    Write-Host "`nSCENE PRODUCTION LAYER: FAIL" -ForegroundColor Red
}

Write-Host "`nNO COMMIT OR PUSH WAS PERFORMED." -ForegroundColor Yellow
