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

Invocation →’ Character ID →’ Reference ID →’ Character Bible →’ Canonical References →’ Master Generation Prompt v002.

The repository defines the identity contract. External generation systems own their invocation mechanism.
