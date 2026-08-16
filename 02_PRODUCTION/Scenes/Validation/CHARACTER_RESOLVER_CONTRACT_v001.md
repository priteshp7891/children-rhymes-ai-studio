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

Invocation →’ Character ID →’ Reference ID →’ Character Bible →’ Canonical References →’ Master Generation Prompt v002

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
