$ErrorActionPreference = "Stop"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - FOUNDATION CLEANUP" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

$root = (Get-Location).Path

$targets = @(
    Get-ChildItem (Join-Path $root "02_PRODUCTION") -Recurse -File
    Get-ChildItem (Join-Path $root "03_CONTENT") -Recurse -File
    Get-ChildItem (Join-Path $root "04_AI_SYSTEM") -Recurse -File
)

Write-Host ""
Write-Host "Files targeted: $($targets.Count)" -ForegroundColor Green

foreach ($file in $targets) {

    $content = [System.IO.File]::ReadAllText(
        $file.FullName,
        [System.Text.UTF8Encoding]::new($false)
    )

    # Repair common UTF-8 mojibake without putting problematic
    # Unicode literals into this PowerShell script.

    $badArrow = (
        [string][char]0x00E2 +
        [string][char]0x2020
    )

    $badEmDash = (
        [string][char]0x00E2 +
        [string][char]0x20AC +
        [string][char]0x201D
    )

    $badEnDash = (
        [string][char]0x00E2 +
        [string][char]0x20AC +
        [string][char]0x201C
    )

    $content = $content.Replace(
        $badArrow,
        [string][char]0x2192
    )

    $content = $content.Replace(
        $badEmDash,
        [string][char]0x2014
    )

    $content = $content.Replace(
        $badEnDash,
        [string][char]0x2013
    )

    # Normalize line endings.
    $content = $content -replace "`r`n", "`n"
    $content = $content -replace "`r", "`n"

    # Remove trailing spaces and tabs.
    $lines = $content -split "`n"

    $cleanLines = foreach ($line in $lines) {
        $line -replace "[ \t]+$", ""
    }

    $content = ($cleanLines -join "`n").TrimEnd("`n") + "`n"

    [System.IO.File]::WriteAllText(
        $file.FullName,
        $content,
        [System.Text.UTF8Encoding]::new($false)
    )

    Write-Host (
        "FIXED: " +
        $file.FullName.Replace($root + "\", "")
    ) -ForegroundColor DarkGreen
}

Write-Host ""
Write-Host "===== MOJIBAKE QA =====" -ForegroundColor Cyan

$badEncoding = @(
    $targets |
    Select-String -Pattern 'â|Ã|ð| '
)

if ($badEncoding.Count -eq 0) {
    Write-Host "PASS - no mojibake detected" -ForegroundColor Green
}
else {
    Write-Host "FAIL - mojibake remains" -ForegroundColor Red
    $badEncoding |
        Select-Object Path, LineNumber, Line
}

Write-Host ""
Write-Host "===== TRAILING WHITESPACE QA =====" -ForegroundColor Cyan

$badWhitespace = @()

foreach ($file in $targets) {

    $lines = Get-Content -LiteralPath $file.FullName -Encoding UTF8

    for ($i = 0; $i -lt $lines.Count; $i++) {

        if ($lines[$i] -match "[ \t]+$") {

            $badWhitespace += [PSCustomObject]@{
                Path = $file.FullName.Replace($root + "\", "")
                Line = $i + 1
                Text = $lines[$i]
            }
        }
    }
}

if ($badWhitespace.Count -eq 0) {
    Write-Host "PASS - no trailing whitespace detected" -ForegroundColor Green
}
else {
    Write-Host "FAIL - trailing whitespace remains" -ForegroundColor Red
    $badWhitespace | Format-Table -AutoSize
}

Write-Host ""
Write-Host "===== CHARACTER RESOLUTION QA =====" -ForegroundColor Cyan

$architecturePath = ".\04_AI_SYSTEM\AI_SYSTEM_ARCHITECTURE_v001.md"
$architecture = Get-Content `
    -LiteralPath $architecturePath `
    -Raw `
    -Encoding UTF8

$characterTests = @(
    @{
        Invocation = "@Leo"
        CharacterID = "CHAR-01"
        ReferenceID = "LEO-REF-001"
    },
    @{
        Invocation = "@Maya"
        CharacterID = "CHAR-02"
        ReferenceID = "MAYA-REF-001"
    },
    @{
        Invocation = "@Benny"
        CharacterID = "CHAR-03"
        ReferenceID = "BENNY-REF-001"
    },
    @{
        Invocation = "@Sunny"
        CharacterID = "CHAR-04"
        ReferenceID = "SUNNY-REF-001"
    },
    @{
        Invocation = "@Nora"
        CharacterID = "CHAR-05"
        ReferenceID = "NORA-REF-001"
    }
)

foreach ($character in $characterTests) {

    $hasInvocation = $architecture.Contains(
        $character.Invocation
    )

    $hasCharacterID = $architecture.Contains(
        $character.CharacterID
    )

    $hasReferenceID = $architecture.Contains(
        $character.ReferenceID
    )

    if ($hasInvocation -and $hasCharacterID -and $hasReferenceID) {

        Write-Host (
            $character.Invocation +
            " -> " +
            $character.CharacterID +
            " -> " +
            $character.ReferenceID +
            " : PASS"
        ) -ForegroundColor Green
    }
    else {

        Write-Host (
            $character.Invocation +
            " : FAIL"
        ) -ForegroundColor Red

        Write-Host (
            "  Invocation : " +
            $hasInvocation
        )

        Write-Host (
            "  Character ID : " +
            $hasCharacterID
        )

        Write-Host (
            "  Reference ID : " +
            $hasReferenceID
        )
    }
}

Write-Host ""
Write-Host "===== LEO CONTENT DIFF =====" -ForegroundColor Cyan

$leoDiff = git diff -- "01_UNIVERSE/Characters/Leo.md"

if ([string]::IsNullOrWhiteSpace(($leoDiff -join "`n"))) {
    Write-Host "PASS - no Leo content diff" -ForegroundColor Green
}
else {
    Write-Host "REVIEW - Leo has content changes" -ForegroundColor Yellow
    $leoDiff
}

Write-Host ""
Write-Host "===== GIT DIFF CHECK =====" -ForegroundColor Cyan

git diff --check

Write-Host ""
Write-Host "===== FINAL STATUS =====" -ForegroundColor Cyan

git status --short

Write-Host ""
Write-Host "Foundation cleanup completed." -ForegroundColor Green
