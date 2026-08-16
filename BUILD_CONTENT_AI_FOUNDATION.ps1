$ErrorActionPreference = "Stop"
$root = (Get-Location).Path
Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - CONTENT + AI FOUNDATION" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan

function Write-Utf8NoBom {
    param([string]$RelativePath,[string]$Content)
    $path = Join-Path $root $RelativePath
    $parent = Split-Path -Parent $path
    New-Item -ItemType Directory -Path $parent -Force | Out-Null
    $Content = $Content -replace "`r`n", "`n"
    $Content = $Content -replace "`r", "`n"
    $Content = $Content.TrimEnd("`n") + "`n"
    [System.IO.File]::WriteAllText($path,$Content,[System.Text.UTF8Encoding]::new($false))
    Write-Host "CREATED/UPDATED: $RelativePath" -ForegroundColor Green
}

Write-Host "[1/4] Creating 03_CONTENT foundation..." -ForegroundColor Yellow
Write-Utf8NoBom "03_CONTENT\CONTENT_WORKFLOW_STANDARD_v001.md" @'
# Content Workflow Standard

**Document ID:** CONTENT-WF-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the controlled lifecycle from a content idea to production-ready scene specifications.

## Authority

Content follows the Master Universe Bible, Production Constitution, Character Bibles, Character Generation Standard, canonical references, Scene Specification Standard, and scene-specific requirements.

## Content Lifecycle

Idea → Episode → Script → Scene Specifications → Scene Validation → Production Generation → QC → Final Assembly

## Ideas

Ideas are proposals, not production assets. An idea may contain an Idea ID, working title, learning objective, target age, core concept, hook, candidate characters, and status.

## Episodes

An episode is the controlled content unit and should identify Episode ID, title, learning objective, target audience, script, scene list, required characters, audio requirements, production status, and QC status.

## Scripts

The script is the authoritative text source for narration or lyrics. It must preserve the learning objective, age suitability, meaning, repetition, character roles, and visual synchronization requirements.

## Storyboards

A storyboard translates approved script content into visual scene planning. It may define scene ID, visual intent, character placement, action, environment, camera, transition, and timing, but must not redesign canonical characters.

## Scene Handoff

Only validated scene specifications may be handed to the production layer.

## Status

IDEA → DRAFT → SCRIPTED → STORYBOARDED → SCENE_READY → IN_PRODUCTION → QC → APPROVED → PUBLISHED → ARCHIVED

## Canonical Principle

**Content defines what the episode teaches and tells; production defines how each approved scene is generated.**

## Revision Policy

This standard is CANONICAL / LOCKED. Changes require an explicit content-system revision.
'@

Write-Utf8NoBom "03_CONTENT\Ideas\README.md" @'
# Content Ideas

## Purpose

Store and organize candidate episode concepts.

## Minimum Record

Idea ID, working title, learning objective, target age, core concept, hook, candidate characters, and status.

## Rule

An idea becomes an episode only after explicit selection and development.
'@
Write-Utf8NoBom "03_CONTENT\Episodes\README.md" @'
# Episodes

## Purpose

Store controlled episode-level content packages.

## Minimum Package

Episode metadata, approved script, scene specifications, storyboard, required characters, audio requirements, and QC state.

## Rule

An episode is not production-ready until its scene specifications pass scene validation.
'@
Write-Utf8NoBom "03_CONTENT\Scripts\README.md" @'
# Scripts

## Purpose

Store episode scripts and approved narration / lyrics.

## Rule

The script is the text authority for the episode. Visual generation must reinforce the approved narration or lyrics.

## Relationship

Script → Scene Specification → Production
'@
Write-Utf8NoBom "03_CONTENT\Storyboards\README.md" @'
# Storyboards

## Purpose

Store visual planning derived from approved scripts and scene specifications.

## Rule

Storyboards may vary composition, action, camera, environment, and timing, but may not redesign canonical characters.

## Relationship

Script → Storyboard → Scene Specification → Production
'@

Write-Host "[2/4] Creating 04_AI_SYSTEM foundation..." -ForegroundColor Yellow
Write-Utf8NoBom "04_AI_SYSTEM\AI_SYSTEM_ARCHITECTURE_v001.md" @'
# AI System Architecture

**Document ID:** AI-ARCH-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the repository-level architecture for AI-assisted content and production workflows.

## Core Principle

The AI system operates on canonical project contracts and must not silently redefine universe rules, character identity, canonical references, scene requirements, or production approval rules.

## System Flow

Master Universe → Content System → Scene Specification → Character Resolution → Production Generation → QC → Assembly

## Agent Layer

Agents may assist with idea development, script drafting, scene specification, validation, prompt generation, QC assistance, and metadata preparation. Agents are not authorities over canonical project documents.

## Prompt Layer

Prompts provide reusable implementation instructions and are subordinate to higher-level canonical documents.

## Automation Layer

Automation connects approved workflow stages while preserving IDs, status, traceability, approval state, canonical references, and source information.

## Character Resolution

@Leo → CHAR-01 → LEO-REF-001
@Maya → CHAR-02 → MAYA-REF-001
@Benny → CHAR-03 → BENNY-REF-001
@Sunny → CHAR-04 → SUNNY-REF-001
@Nora → CHAR-05 → NORA-REF-001

External generation platforms own their invocation mechanics.

## Scene Contract

AI generation consumes validated scene specifications defined by the Scene Specification Standard.

## Separation of Responsibilities

Content answers: **What are we making?**

Scene specification answers: **What must happen in this scene?**

Character system answers: **Who is the character and what must remain locked?**

AI generation answers: **How can the specified scene be generated?**

QC answers: **Does the generated result satisfy the contract?**

## Canonical Principle

**AI accelerates execution; canonical documents control identity and intent.**

## Revision Policy

This architecture is CANONICAL / LOCKED. Changes require explicit AI-system revision.
'@
Write-Utf8NoBom "04_AI_SYSTEM\Agents\README.md" @'
# AI Agents

## Purpose

Define the future location for controlled AI-agent specifications.

## Planned Responsibilities

Content / Idea Agent, Script Agent, Scene Agent, Character Resolution Agent, Prompt Agent, QC Agent, and Publishing / Metadata Agent.

## Required Agent Specification

Purpose, inputs, outputs, authority, required canonical sources, validation requirements, and failure behavior.

## Rule

Agents must not silently modify canonical identity documents.
'@
Write-Utf8NoBom "04_AI_SYSTEM\Automation\README.md" @'
# AI Automation

## Purpose

Define future automation workflows connecting approved system stages.

## Principle

Automation must move validated data between stages without silently changing canonical content.

## Traceability

Preserve record IDs, episode IDs, scene IDs, character IDs, reference IDs, status, approval state, and source information.

## Rule

No automated publishing step may bypass required QC or approval gates.
'@
Write-Utf8NoBom "04_AI_SYSTEM\Prompts\README.md" @'
# AI Prompts

## Purpose

Store reusable prompts used by the AI system.

## Categories

Content prompts, script prompts, scene prompts, validation prompts, QC prompts, and metadata prompts.

## Authority

Prompts are implementation instructions subordinate to the Master Universe Bible, Production Constitution, Character Bibles, Character Generation Standard, and Scene Specification Standard.

## Rule

A prompt must not silently override canonical project rules.
'@

Write-Host "[3/4] Validating files and contracts..." -ForegroundColor Yellow
$required = @(
"03_CONTENT\CONTENT_WORKFLOW_STANDARD_v001.md",
"03_CONTENT\Ideas\README.md",
"03_CONTENT\Episodes\README.md",
"03_CONTENT\Scripts\README.md",
"03_CONTENT\Storyboards\README.md",
"04_AI_SYSTEM\AI_SYSTEM_ARCHITECTURE_v001.md",
"04_AI_SYSTEM\Agents\README.md",
"04_AI_SYSTEM\Automation\README.md",
"04_AI_SYSTEM\Prompts\README.md"
)
$allPass=$true
foreach($f in $required){ if(Test-Path (Join-Path $root $f) -PathType Leaf){Write-Host "$f : PASS" -ForegroundColor Green}else{Write-Host "$f : FAIL" -ForegroundColor Red;$allPass=$false} }

$arch=Get-Content (Join-Path $root "04_AI_SYSTEM\AI_SYSTEM_ARCHITECTURE_v001.md") -Raw -Encoding UTF8
$contracts=@("@Leo → CHAR-01 → LEO-REF-001","@Maya → CHAR-02 → MAYA-REF-001","@Benny → CHAR-03 → BENNY-REF-001","@Sunny → CHAR-04 → SUNNY-REF-001","@Nora → CHAR-05 → NORA-REF-001")
foreach($c in $contracts){if($arch.Contains($c)){Write-Host "$c : PASS" -ForegroundColor Green}else{Write-Host "$c : FAIL" -ForegroundColor Red;$allPass=$false}}

Write-Host "`n===== MOJIBAKE QA =====" -ForegroundColor Cyan
$bad=Get-ChildItem (Join-Path $root "03_CONTENT"),(Join-Path $root "04_AI_SYSTEM") -Recurse -File | Select-String -Pattern 'â'
if($bad){Write-Host "FAIL — mojibake detected" -ForegroundColor Red;$bad|Select-Object Path,LineNumber,Line;$allPass=$false}else{Write-Host "PASS — no mojibake detected" -ForegroundColor Green}

Write-Host "`n===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check
Write-Host "`n===== GIT STATUS =====" -ForegroundColor Cyan
git status --short
Write-Host "`n============================================" -ForegroundColor Cyan
if($allPass){Write-Host "CONTENT + AI FOUNDATION: PASS" -ForegroundColor Green}else{Write-Host "CONTENT + AI FOUNDATION: REVIEW REQUIRED" -ForegroundColor Yellow}
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "NO COMMIT OR PUSH WAS PERFORMED."
