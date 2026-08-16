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
