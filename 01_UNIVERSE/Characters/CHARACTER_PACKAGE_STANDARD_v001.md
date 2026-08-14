# Character Package Standard

**Document ID:** CHAR-PKG-001
**Version:** v001
**Status:** CANONICAL / LOCKED

## Purpose

Define the standard structure, documentation rules, prompt organization, reference organization, and revision rules for every character package in the Children Rhymes AI universe.

This standard applies to Leo, Maya, Benny, Sunny, and Nora.

The package structure is standardized while character-specific creative content remains unique to each character.

## Canonical Package Structure

Every character package must follow this structure:

[Character]/
├── Archive/
│   └── README.md
├── Prompts/
│   ├── README.md
│   └── [CHARACTER]_Master_Generation_Prompt_v001.md
└── References/

The character's Character Bible remains one level above the package:

Characters/
├── [Character].md
└── [Character]/

## Character Bible Authority

The Character Bible is the authoritative character-specific document.

It defines:

- Character identity
- Role
- Age / character scale
- Personality
- Story function
- Visual identity
- Canonical camera reference
- Signature accessory
- Voice status
- Canonical references
- Revision policy

Package documents must not contradict the Character Bible.

## Archive README Standard

Every Archive/README.md must contain:

1. Character name
2. Character ID
3. Reference ID
4. Canonical status
5. Purpose
6. Archive rules
7. Current canonical package
8. Revision policy

## Prompts README Standard

Every Prompts/README.md must contain:

1. Character name
2. Character ID
3. Reference ID
4. Canonical status
5. Purpose
6. Current master prompt
7. Prompt rules
8. Reference authority
9. Revision policy

## Master Generation Prompt Standard

Every master generation prompt must use the same section architecture:

- Purpose
- Canonical References
- Character Identity
- Locked Visual DNA
- Personality / Character Behavior
- Absolute Consistency Rules
- Camera Reference
- Scene Variation
- Signature Accessory
- Reference Priority
- Quality Control
- Revision Policy

The content inside these sections remains character-specific.

## Reference Rules

The References/ directory contains active canonical visual references only.

Reference files must:

- Use the assigned Character Reference ID.
- Use descriptive asset names.
- Remain outside Archive/.
- Never be silently replaced by an unapproved generation.

## Prompt Rules

Master prompts must:

- Identify the character explicitly.
- Identify the canonical Reference ID.
- Preserve the Character Bible's locked identity.
- Follow CHARACTER_GENERATION_STANDARD_v001.md.
- Define allowed scene variation.
- Define character-specific negative constraints.
- Never override a higher-level canonical rule.
- Never silently change character identity.

## Status Rules

Canonical character assets use:

CANONICAL / LOCKED

Candidate, draft, generated, rejected, or experimental assets must not be represented as canonical.

## Versioning Rules

Version identifiers must use:

v001, v002, v003, etc.

A meaningful canonical prompt revision requires a new version.

## Revision Rules

Character identity changes require an explicit character-design revision.

Prompt-only changes must not silently modify the character.

When a canonical asset is superseded:

1. Create the new approved version.
2. Assign the new version identifier.
3. Update the active package.
4. Archive the superseded version when required.
5. Preserve traceability.

## Preservation Rule

Standardization must preserve existing approved character-specific information.

Standardization means:

- Normalize structure.
- Normalize terminology.
- Normalize status and version conventions.
- Normalize references to canonical standards.
- Preserve approved character-specific constraints.

Do not replace useful character content with generic placeholder text.

## Authority Hierarchy

The character system follows this hierarchy:

1. Character Bible
2. Canonical visual references
3. Character Generation Standard
4. Character Master Generation Prompt
5. Scene-specific generation requirements

Lower-level instructions must not contradict higher-level canonical rules.

## QA Requirement

Before a character package is committed:

- Archive README matches the standard.
- Prompts README matches the standard.
- Master prompt matches the standard structure.
- Character-specific content is preserved.
- Character ID is correct.
- Reference ID is correct.
- Version is correct.
- Status is correct.
- Canonical reference paths are correct.
- No contradictory status exists.
- No accidental character identity changes were introduced.
- git diff --check passes.

## Scope

This standard governs the organization and documentation of character packages.

It does not replace:

- Character Bibles
- Character Generation Standard
- Production workflows
- Scene specifications
- Canonical reference assets.

## Revision Policy

This standard is CANONICAL / LOCKED.

Changes require an explicit project-level revision.

## Canonical Principle

**Standardize the package structure first. Preserve the character-specific identity within that structure. Apply the standardized package only after validation.**
