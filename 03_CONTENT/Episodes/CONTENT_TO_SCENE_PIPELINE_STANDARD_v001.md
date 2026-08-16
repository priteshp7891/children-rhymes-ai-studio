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
