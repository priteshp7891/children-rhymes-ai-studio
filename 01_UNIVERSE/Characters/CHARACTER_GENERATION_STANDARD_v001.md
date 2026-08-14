# Character Generation Standard

**Document ID:** CGS-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Ensure every generated image and video preserves the locked identity of the Children Rhymes AI characters while allowing scene-specific variation.

This standard applies to:

- Leo
- Maya
- Benny
- Sunny
- Nora

Character generation must follow the character's approved Character Bible and canonical reference package.

## Reference Priority

For every generation, use references in this priority:

1. Character's canonical Concept sheet / primary reference
2. Approved turnaround reference
3. Approved full-body reference
4. Approved portrait reference
5. Character Bible
6. Scene prompt

The scene prompt may change what the character is doing, but it must not redesign the character.

## Identity Lock

Every generation must preserve:

- Face
- Eyes
- Hair, feathers, or fur
- Skin, fur, or feather colors
- Markings
- Body proportions
- Silhouette
- Anatomy
- Established accessories
- Age appearance
- Character-specific design features

## Allowed Variation

The following may change when required by the scene:

- Pose
- Expression
- Gesture
- Action
- Camera position
- Camera movement
- Environment
- Lighting
- Time of day
- Scene-specific props
- Interaction with other characters

These variations must not alter the character's canonical identity.

## Forbidden Variation

Do not:

- Redesign the character
- Change species
- Age or de-age the character
- Change body proportions
- Change canonical colors
- Add random accessories
- Remove locked accessories
- Change locked hairstyles or design features
- Substitute another character
- Incorrectly mirror anatomical-specific features
- Mix character identities
- Use another character as the visual reference
- Introduce unauthorized design changes

## Reference Usage

Every production generation should explicitly identify the character reference.

Use this base instruction:

> Use [REFERENCE-ID] as the exact character reference. Preserve the character's canonical identity, proportions, silhouette, colors, markings, anatomy, and established design features. Only change the scene-specific pose, expression, action, environment, and camera as requested.

The exact character-specific requirements from the Character Bible must be added when necessary.

## Multi-Character Scenes

When multiple characters appear:

- Each character receives their own canonical reference.
- Never use one character's reference to generate another character.
- Preserve established relative scale.
- Preserve each character's individual visual identity.
- Do not allow clothing, colors, accessories, facial features, or other design elements to bleed between characters.
- Maintain established character relationships and spatial logic.

## Camera

Camera changes are permitted without changing character identity.

Use the approved turnaround references to establish character appearance across:

- Front
- Front-left
- Left
- Back-left
- Back
- Back-right
- Right
- Front-right

Anatomical left and right always refer to the character's own left and right, not the viewer's.

## Generation Workflow

For each character generation:

1. Identify the character.
2. Identify the canonical Reference ID.
3. Load the appropriate canonical references.
4. Apply the Character Bible.
5. Define the scene-specific action.
6. Define the pose and expression.
7. Define the camera.
8. Define the environment and lighting.
9. Generate the asset.
10. Perform the Character Consistency QA.
11. Reject or regenerate if any locked identity element fails.
12. Only explicitly approved assets may become canonical references.

## Character Consistency QA

A generated asset must pass all applicable checks:

- [ ] Correct character
- [ ] Correct face
- [ ] Correct age appearance
- [ ] Correct proportions
- [ ] Correct silhouette
- [ ] Correct colors
- [ ] Correct markings
- [ ] Correct anatomy
- [ ] Correct locked accessories
- [ ] Correct anatomical left/right placement
- [ ] No identity mixing
- [ ] No unauthorized redesign
- [ ] No unintended character substitution

If a locked identity element fails, the asset is rejected.

## Canonical Reference Rule

A generated asset does not become canonical merely because it looks good.

Canonical status requires explicit approval.

Once approved, the asset must be added to the appropriate character's canonical reference package and assigned the appropriate reference/version identifier.

Generation output and canonical reference are separate concepts.

## Character-Specific Authority

This document establishes the universal generation rules.

The individual Character Bible remains authoritative for character-specific details.

Therefore:

**Character Generation Standard**
→ universal generation rules

**Character Bible**
→ character-specific identity rules

**Canonical References**
→ visual source of truth

A scene prompt may modify scene-specific elements but may not override locked character identity.

## Revision Policy

This standard is CANONICAL / LOCKED.

Changes to the generation standard require an explicit production-system revision.

Changes to an individual character's identity require an explicit character-design revision and must not be made by silently modifying generation prompts.

## Canonical Principle

**Generate the same character in a different situation — never a different character in the same situation.**