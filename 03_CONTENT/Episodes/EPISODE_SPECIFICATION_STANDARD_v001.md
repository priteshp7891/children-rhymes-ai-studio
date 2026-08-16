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
