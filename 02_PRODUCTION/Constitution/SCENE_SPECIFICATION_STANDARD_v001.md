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

SC-001

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

@Leo
@Maya
@Benny
@Sunny
@Nora

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
