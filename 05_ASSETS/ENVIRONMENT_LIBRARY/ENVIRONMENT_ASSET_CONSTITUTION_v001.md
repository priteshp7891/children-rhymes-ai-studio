# Environment Asset Library — Constitution v001

**Project:** Children Rhymes AI Studio  
**Status:** LOCKED PRODUCTION RULE  
**Video engine:** Google Flow  
**Primary use:** YouTube 16:9 episodes and derived 9:16 Shorts

## 1. Purpose

Every recurring physical location used by the channel is a canonical production asset. Environments are created once as reusable reference/Ingredient assets and reused across episodes instead of being regenerated from prose prompts each time.

## 2. Canonical Environment Principle

A scene may use only:

1. an existing locked environment asset, or
2. a newly created environment asset that is reviewed and locked before dependent shots are generated.

Flow generation must not be allowed to freely redesign a recurring environment from shot to shot.

## 3. Environment Families

The library will support reusable environment families such as:

- CLASSROOM
- GARDEN
- BEDROOM
- BATHROOM
- KITCHEN
- PLAYGROUND
- PARK
- BACKYARD
- LIVING_ROOM
- LIBRARY
- MUSIC_ROOM
- OUTDOOR_SKY / IMAGINATIVE_LEARNING_SPACE

Additional environments are added only when production requires them.

## 4. Environment Asset Package

Each canonical environment must have:

- Stable asset ID
- Environment name
- Environment family
- Master 16:9 reference image
- Optional alternate camera-angle reference images
- Lighting specification
- Time-of-day specification where relevant
- Color/material specification
- Fixed architectural/layout features
- Allowed movable props
- Forbidden changes
- Google Flow Ingredient/reference guidance
- Continuity notes
- Approval status

## 5. Master Reference Image

The master environment reference is the source of truth for visual continuity. It should normally be:

- 16:9
- character-free
- clean and uncluttered
- free of generated text/signage unless intentionally required
- visually rich enough to establish layout and materials
- stable enough to support multiple character positions

Characters are added separately through canonical character Ingredients/references.

## 6. Environment + Character Separation

Environment identity and character identity are independent assets:

`ENVIRONMENT INGREDIENT + CHARACTER INGREDIENT(S) + SHOT ACTION`

A generated video from one shot must not become the required environment source for the next shot unless the video itself is explicitly supported as a Flow reference/Ingredient in the active workflow.

## 7. Episode Usage

For each episode, the production planner must declare the required environments before shot generation begins.

Example:

`EP-001 → CLASSROOM-001`

If an episode requires a garden, bedroom, bathroom, etc., those environments must be selected from the library or created and locked before generation.

## 8. Continuity Rule

Within a continuous location, preserve:

- room geometry
- major furniture positions
- windows/doors
- lighting direction
- wall/floor treatment
- primary props
- scale relationships
- visual style

Camera angle and character position may change without changing the underlying environment.

## 9. Imaginative Visualizations

A lyric may temporarily visualize a different subject without changing the physical location. For example, a classroom can reveal an imaginative counting view through a window, learning board, projection, or visual activity. The planner must distinguish between a **new physical environment** and an **imaginative visualization inside the existing environment**.

## 10. Naming Convention

Canonical environment IDs use:

`ENV-{FAMILY}-{NUMBER}`

Examples:

- `ENV-CLASSROOM-001`
- `ENV-GARDEN-001`
- `ENV-BEDROOM-001`
- `ENV-BATHROOM-001`

Variants use:

`ENV-{FAMILY}-{NUMBER}-V{VERSION}`

## 11. Production Gate

No episode shot is considered generation-ready until its environment reference is declared.

If a required environment does not exist, **stop shot generation and create/lock the environment first**.

## 12. EP-001 Initial Environment

The primary environment for EP-001 is:

`ENV-CLASSROOM-001`

The previously generated S01/S02/S03 classroom appearances are reference candidates only. The canonical master environment image must become the reusable source of truth for subsequent generation.
