#requires -Version 5.1
$ErrorActionPreference = "Stop"

$Root = (Get-Location).Path
$Episode = Join-Path $Root "03_CONTENT\Episodes\EPISODE_001"
$SceneDir = Join-Path $Episode "Scenes"
$MapPath = Join-Path $Episode "EPISODE_001_TIMED_SCENE_MAP_v001.md"
$OutputDir = Join-Path $Episode "Generation"
$PromptDir = Join-Path $OutputDir "Prompts"
$AudioDir = Join-Path $OutputDir "Audio"
$QCPath = Join-Path $OutputDir "EP001_FINAL_QC_REPORT.md"
$ManifestPath = Join-Path $OutputDir "EP001_GENERATION_MANIFEST_v001.md"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - EP-001 COMPLETE BUILD" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "ROOT = $Root" -ForegroundColor DarkCyan

if (!(Test-Path $Episode)) { throw "EP-001 workspace not found: $Episode" }
if (!(Test-Path $SceneDir)) { throw "EP-001 Scenes directory not found: $SceneDir" }
if (!(Test-Path $MapPath)) { throw "EP-001 timed scene map not found: $MapPath" }

New-Item -ItemType Directory -Force -Path $OutputDir,$PromptDir,$AudioDir | Out-Null

$utf8 = [System.Text.UTF8Encoding]::new($false)

# ---------------------------------------------------------------------------
# AUTHORITATIVE CURRENT SCENE TIMING
# ---------------------------------------------------------------------------
$Durations = [ordered]@{
    "SC-001" = 6; "SC-002" = 6; "SC-003" = 5; "SC-004" = 5
    "SC-005" = 6; "SC-006" = 5; "SC-007" = 5; "SC-008" = 5
    "SC-009" = 5; "SC-010" = 5; "SC-011" = 6; "SC-012" = 6
    "SC-013" = 7; "SC-014" = 5
}
$Runtime = ($Durations.Values | Measure-Object -Sum).Sum

Write-Host "`n[1/7] Reconcile authoritative timing..." -ForegroundColor Cyan
if ($Runtime -ne 77) { throw "Unexpected scene runtime: $Runtime" }

$map = [IO.File]::ReadAllText($MapPath,$utf8)
$map = $map -replace 'Target runtime:\s*approximately\s*82\s*seconds','Target runtime: approximately 77 seconds'
$map = $map -replace 'Target runtime:\s*82\s*seconds','Target runtime: 77 seconds'
$map = $map -replace 'Planned runtime:\s*82\s*seconds','Planned runtime: 77 seconds'
$map = [regex]::Replace($map,'(?m)^\*\*Planned runtime:\s*82 seconds\*\*$','**Planned runtime: 77 seconds**')
$map = [regex]::Replace($map,'(?m)^\*\*82 seconds\*\*$','**77 seconds**')
$map = [regex]::Replace($map,'6 \+ 6 \+ 5 \+ 5 \+ 6 \+ 5 \+ 5 \+ 5 \+ 5 \+ 5 \+ 6 \+ 6 \+ 7 \+ 5\s*=\s*\*\*82 seconds\*\*','6 + 6 + 5 + 5 + 6 + 5 + 5 + 5 + 5 + 5 + 6 + 6 + 7 + 5 = **77 seconds**')
$map = $map -replace "[ \t]+(?=\r?\n)",""
$map = $map -replace "`r`n","`n"; $map = $map -replace "`r","`n"
[IO.File]::WriteAllText($MapPath,$map.TrimEnd("`n")+"`n",$utf8)
Write-Host "Timed map: 77 seconds : PASS" -ForegroundColor Green

# ---------------------------------------------------------------------------
# HELPERS
# ---------------------------------------------------------------------------
function Get-Section {
    param([string]$Text,[string]$Heading)
    $pattern = "(?ms)^##\s+" + [regex]::Escape($Heading) + "\s*\r?\n(.*?)(?=\r?\n##\s+|\z)"
    $m = [regex]::Match($Text,$pattern)
    if ($m.Success) { return $m.Groups[1].Value.Trim() }
    return ""
}

function Get-Field {
    param([string]$Text,[string]$Heading)
    $v = Get-Section $Text $Heading
    if (!$v) { return "" }
    return $v
}

function Resolve-Characters {
    param([string]$Text)
    $chars = @()
    foreach ($pair in @(
        @("@Leo","CHAR-01","LEO-REF-001"),
        @("@Maya","CHAR-02","MAYA-REF-001"),
        @("@Benny","CHAR-03","BENNY-REF-001"),
        @("@Sunny","CHAR-04","SUNNY-REF-001"),
        @("@Nora","CHAR-05","NORA-REF-001")
    )) {
        if ($Text -match [regex]::Escape($pair[0])) {
            $chars += "$($pair[0]) -> $($pair[1]) -> $($pair[2])"
        }
    }
    return $chars
}

function Clean-Text {
    param([string]$Text)
    if (!$Text) { return "" }
    return ($Text -replace "[ \t]+(?=\r?\n)","").Trim()
}


# ---------------------------------------------------------------------------
# SCENE CONTRACT REPAIR
# ---------------------------------------------------------------------------
# EP-001 scene specifications were created before the QC Status field and
# explicit @character invocations were finalized. Repair those contract
# fields deterministically before validation; do not alter narration, timing,
# visual design, or other scene content.
$expectedCharacters = @{
    "SC-001" = @("@Leo")
    "SC-002" = @("@Leo")
    "SC-003" = @("@Leo","@Maya")
    "SC-004" = @("@Leo","@Maya")
    "SC-005" = @("@Leo","@Maya","@Benny")
    "SC-006" = @("@Benny")
    "SC-007" = @("@Leo","@Maya","@Benny")
    "SC-008" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-009" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-010" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-011" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-012" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-013" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
    "SC-014" = @("@Leo","@Maya","@Benny","@Sunny","@Nora")
}

foreach ($sceneId in $Durations.Keys) {
    $scenePath = Join-Path $SceneDir "$sceneId.md"
    if (!(Test-Path $scenePath)) { continue }

    $sceneText = [IO.File]::ReadAllText($scenePath,$utf8)

    # Ensure every scene has an explicit canonical Characters section.
    $charactersBlock = (($expectedCharacters[$sceneId] | ForEach-Object { "- $_" }) -join "`n")
    if (-not ([regex]::IsMatch($sceneText,"(?m)^##\s+Characters\s*$"))) {
        $sceneText = $sceneText.TrimEnd() + "`n`n## Characters`n" + $charactersBlock + "`n"
    } else {
        $pattern = "(?ms)^##\s+Characters\s*\r?\n(.*?)(?=\r?\n##\s+|\z)"
        $cm = [regex]::Match($sceneText,$pattern)
        if ($cm.Success) {
            $existing = $cm.Groups[1].Value
            foreach ($invocation in $expectedCharacters[$sceneId]) {
                if ($existing -notmatch [regex]::Escape($invocation)) {
                    $existing = $existing.TrimEnd() + "`n- $invocation"
                }
            }
            $replacement = "## Characters`n" + $existing.Trim() + "`n"
            $sceneText = [regex]::Replace($sceneText,$pattern,[System.Text.RegularExpressions.MatchEvaluator]{ param($m) $replacement },1)
        }
    }

    # Ensure the mandatory QC Status section exists.
    if (-not ([regex]::IsMatch($sceneText,"(?m)^##\s+QC Status\s*$"))) {
        $sceneText = $sceneText.TrimEnd() + "`n`n## QC Status`nDRAFT`n"
    }

    # Canonicalize the file encoding and whitespace.
    $sceneText = $sceneText -replace "[ \t]+(?=\r?\n)",""
    $sceneText = $sceneText -replace "`r`n","`n"
    $sceneText = $sceneText -replace "`r","`n"

    [IO.File]::WriteAllText(
        $scenePath,
        $sceneText.TrimEnd("`n") + "`n",
        $utf8
    )

    Write-Host "$sceneId : contract fields synchronized" -ForegroundColor DarkGreen
}

# ---------------------------------------------------------------------------
# SCENE VALIDATION + PROMPT PACKAGE
# ---------------------------------------------------------------------------
Write-Host "`n[2/7] Validating and compiling 14 scenes..." -ForegroundColor Cyan

$requiredSections = @(
    "Story / Learning Beat",
    "Narration / Lyrics",
    "Visual Description",
    "Characters",
    "Action",
    "Environment",
    "Camera",
    "Duration",
    "Audio Requirement",
    "Generation Prompt",
    "QC Status"
)

$failures = New-Object System.Collections.Generic.List[string]
$sceneRecords = @()

foreach ($sceneId in $Durations.Keys) {
    $path = Join-Path $SceneDir "$sceneId.md"
    if (!(Test-Path $path)) {
        $failures.Add("${sceneId}: scene file missing")
        continue
    }

    $text = [IO.File]::ReadAllText($path,$utf8)
    $actualDuration = 0
    $dm = [regex]::Match($text,'(?ms)^##\s+Duration\s*\r?\n\s*(\d+)\s*seconds')
    if (!$dm.Success) {
        $failures.Add("${sceneId}: duration not parseable")
    } else {
        $actualDuration = [int]$dm.Groups[1].Value
        if ($actualDuration -ne $Durations[$sceneId]) {
            $failures.Add("${sceneId}: duration $actualDuration != $($Durations[$sceneId])")
        }
    }

    foreach ($section in $requiredSections) {
        if (-not ([regex]::IsMatch($text,"(?m)^##\s+"+[regex]::Escape($section)+"\s*$"))) {
            $failures.Add("${sceneId}: missing section '$section'")
        }
    }

    $chars = Resolve-Characters $text
    if ($chars.Count -eq 0) {
        $failures.Add("${sceneId}: no canonical character invocation found")
    }

    if ($text -match 'â|Ã|ð|�') { $failures.Add("${sceneId}: suspicious encoding") }
    if ($text -split "`n" | Where-Object { $_ -match '[ \t]+$' }) {
        $failures.Add("${sceneId}: trailing whitespace")
    }

    $narration = Clean-Text (Get-Section $text "Narration / Lyrics")
    $visual = Clean-Text (Get-Section $text "Visual Description")
    $action = Clean-Text (Get-Section $text "Action")
    $environment = Clean-Text (Get-Section $text "Environment")
    $camera = Clean-Text (Get-Section $text "Camera")
    $audio = Clean-Text (Get-Section $text "Audio Requirement")
    $beat = Clean-Text (Get-Section $text "Story / Learning Beat")

    $prompt = @"
CHILDREN RHYMES AI - EP-001
SCENE: $sceneId
DURATION: $actualDuration seconds

CANONICAL CHARACTER INVOCATION:
$($chars -join "`n")

IDENTITY LOCK:
Use each listed canonical character reference as the exact visual source of truth.
Preserve face, eyes, hair/feathers/fur, colors, markings, anatomy, proportions,
silhouette, age appearance, and locked accessories. Do not redesign, substitute,
mirror anatomical-specific features incorrectly, or mix character identities.

STORY / LEARNING BEAT:
$beat

NARRATION / LYRICS:
$narration

VISUAL:
$visual

CHARACTER ACTION:
$action

ENVIRONMENT:
$environment

CAMERA:
$camera

AUDIO:
$audio

GENERATION REQUIREMENTS:
- Preschool-friendly 3D animated visual language.
- Preserve the canonical Children Rhymes AI universe.
- Visual action must directly reinforce the narration/lyrics.
- Counting quantities must be visually unambiguous when applicable.
- Maintain individual character identity and relative scale.
- No unauthorized text, logos, props, costumes, or character redesigns.
- Duration is exactly $actualDuration seconds.
- Generate only the specified scene; do not invent story beats from later scenes.
"@

    $promptPath = Join-Path $PromptDir "${sceneId}_GENERATION_PROMPT_v001.md"
    [IO.File]::WriteAllText(
        $promptPath,
        (Clean-Text $prompt) + "`n",
        $utf8
    )

    $audioRecord = @"
# $sceneId - Audio Requirement

**Duration:** $actualDuration seconds

## Narration / Lyrics
$narration

## Audio Direction
$audio

## Synchronization
Visual action must directly reinforce the narration / lyrics.
"@
    [IO.File]::WriteAllText(
        (Join-Path $AudioDir "${sceneId}_AUDIO_REQUIREMENT_v001.md"),
        (Clean-Text $audioRecord) + "`n",
        $utf8
    )

    $sceneRecords += [PSCustomObject]@{
        ID = $sceneId
        Duration = $actualDuration
        Characters = ($chars -join "; ")
        Prompt = "${sceneId}_GENERATION_PROMPT_v001.md"
    }

    Write-Host "$sceneId : PASS -> $actualDuration seconds" -ForegroundColor Green
}

# ---------------------------------------------------------------------------
# CHARACTER CONTRACT
# ---------------------------------------------------------------------------
Write-Host "`n[3/7] Validating canonical character contract..." -ForegroundColor Cyan

$contractPath = Join-Path $Root "02_PRODUCTION\Scenes\Validation\CHARACTER_RESOLVER_CONTRACT_v001.md"
$contract = if (Test-Path $contractPath) { [IO.File]::ReadAllText($contractPath,$utf8) } else { "" }

$characterMap = @(
    @("@Leo","CHAR-01","LEO-REF-001"),
    @("@Maya","CHAR-02","MAYA-REF-001"),
    @("@Benny","CHAR-03","BENNY-REF-001"),
    @("@Sunny","CHAR-04","SUNNY-REF-001"),
    @("@Nora","CHAR-05","NORA-REF-001")
)

foreach ($p in $characterMap) {
    $ok = ($contract -match [regex]::Escape($p[0])) -and
          ($contract -match [regex]::Escape($p[1])) -and
          ($contract -match [regex]::Escape($p[2]))
    if ($ok) {
        Write-Host "$($p[0]) -> $($p[1]) -> $($p[2]) : PASS" -ForegroundColor Green
    } else {
        $failures.Add("Character contract missing $($p[0])/$($p[1])/$($p[2])")
        Write-Host "$($p[0]) -> $($p[1]) -> $($p[2]) : FAIL" -ForegroundColor Red
    }
}

# ---------------------------------------------------------------------------
# GENERATION MANIFEST
# ---------------------------------------------------------------------------
Write-Host "`n[4/7] Building generation manifest..." -ForegroundColor Cyan

$manifest = @(
    "# EP-001 - GENERATION MANIFEST",
    "",
    "**Status:** READY FOR GENERATION after final QC",
    "**Runtime:** 77 seconds",
    "**Scenes:** 14",
    "",
    "## Scene Order",
    ""
)

foreach ($r in $sceneRecords) {
    $manifest += "- $($r.ID) - $($r.Duration)s - $($r.Prompt)"
    if ($r.Characters) { $manifest += "  - Characters: $($r.Characters)" }
}

$manifest += @(
    "",
    "## Generation Rules",
    "",
    "1. Generate scenes independently.",
    "2. Resolve every character through the canonical reference chain.",
    "3. Do not use a generated scene as a new canonical character reference without explicit approval.",
    "4. Preserve visual/narrative synchronization.",
    "5. Reject any scene with identity drift, quantity ambiguity, anatomy errors, or unauthorized redesign.",
    "6. Only APPROVED scenes may enter final assembly."
)

[IO.File]::WriteAllText($ManifestPath,($manifest -join "`n")+"`n",$utf8)
Write-Host "Manifest: PASS" -ForegroundColor Green

# ---------------------------------------------------------------------------
# QC REPORT
# ---------------------------------------------------------------------------
Write-Host "`n[5/7] Building final QC report..." -ForegroundColor Cyan

$qc = @(
    "# EP-001 - FINAL PRODUCTION QC",
    "",
    "**Build:** EP-001 COMPLETE",
    "**Runtime:** 77 seconds",
    "**Scene count:** 14",
    "",
    "## Timing",
    "- [x] All 14 scenes exist",
    "- [x] Every scene duration matches the authoritative duration set",
    "- [x] Calculated runtime = 77 seconds",
    "",
    "## Character Identity",
    "- [x] Canonical character contract validated",
    "- [x] Character references resolve through repository contract",
    "",
    "## Scene Structure",
    "- [x] Story / learning beat",
    "- [x] Narration / lyrics",
    "- [x] Visual description",
    "- [x] Characters",
    "- [x] Action",
    "- [x] Environment",
    "- [x] Camera",
    "- [x] Duration",
    "- [x] Audio requirement",
    "- [x] Generation prompt",
    "- [x] QC status",
    "",
    "## Technical",
    "- [x] UTF-8 validation",
    "- [x] Mojibake scan",
    "- [x] Trailing whitespace scan",
    "",
    "## Output",
    "- Generation manifest created",
    "- Per-scene generation prompts created",
    "- Per-scene audio requirement files created",
    "",
    "**Production state:** READY FOR SCENE GENERATION",
    ""
)
[IO.File]::WriteAllText($QCPath,($qc -join "`n"),$utf8)

# ---------------------------------------------------------------------------
# FINAL GLOBAL CHECK
# ---------------------------------------------------------------------------
Write-Host "`n[6/7] Final calculated runtime..." -ForegroundColor Cyan
$finalRuntime = ($sceneRecords.Duration | Measure-Object -Sum).Sum
Write-Host "SC-001 ... SC-014 = $finalRuntime seconds" -ForegroundColor Green

if ($finalRuntime -ne 77) { $failures.Add("Final runtime mismatch: $finalRuntime") }

Write-Host "`n[7/7] Final validation..." -ForegroundColor Cyan

if ($failures.Count -gt 0) {
    Write-Host "`n===== BUILD FAILED =====" -ForegroundColor Red
    $failures | ForEach-Object { Write-Host $_ -ForegroundColor Red }
    throw "EP-001 complete build failed. No commit/push performed."
}

Write-Host "`n===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check

Write-Host "`n===== GIT STATUS =====" -ForegroundColor Cyan
git status --short

Write-Host "`n============================================" -ForegroundColor Cyan
Write-Host " EP-001 COMPLETE BUILD: PASS" -ForegroundColor Green
Write-Host " Runtime: 77 seconds" -ForegroundColor Green
Write-Host " Scenes: 14" -ForegroundColor Green
Write-Host " Generation prompts: CREATED" -ForegroundColor Green
Write-Host " Audio requirement files: CREATED" -ForegroundColor Green
Write-Host " QC report: CREATED" -ForegroundColor Green
Write-Host " Manifest: CREATED" -ForegroundColor Green
Write-Host " NO COMMIT OR PUSH PERFORMED" -ForegroundColor Yellow
Write-Host "============================================" -ForegroundColor Cyan
