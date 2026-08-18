# EP-001 — Environment Lock v001

**Status:** LOCKED FOR GENERATION  
**Episode:** EP-001 — Count With Me!  
**Master format:** 16:9  
**Video engine:** Google Flow

## Decision

EP-001 will use **one canonical classroom environment as the primary visual home for the rhyme**.

The previously generated S01 outdoor-style learning environment is superseded for production. S01 must be regenerated to match the classroom environment established successfully in S02.

This is not merely a background preference. The classroom is now a continuity asset and must remain visually consistent across the episode unless a deliberate story transition is approved.

## Why this is the correct choice

The S02 generation established a stronger, more coherent educational setting. Keeping S01 in a different environment would create an unnecessary visual discontinuity between the opening invitation and Maya's response.

For a preschool counting rhyme, a recognizable classroom also gives us a stable visual home for the characters and makes the educational purpose immediately understandable.

## Environment identity

The canonical classroom should feel like a premium preschool learning room rather than a generic school classroom.

Required qualities:

- warm, cheerful, safe and inviting;
- polished 3D children's-animation aesthetic;
- soft natural-looking classroom lighting;
- clean, rounded furniture and props;
- visually uncluttered central performance area;
- child-scale furniture and learning materials;
- cohesive colors and materials across every shot;
- enough open space for Leo, Maya, Benny, Sunny and Nora to perform;
- subtle counting/learning elements integrated into the room;
- no giant decorative numbers dominating the composition;
- no random changes in wall layout, furniture, windows or major props between shots.

## Continuity anchors

The following should remain fixed whenever the camera allows them to be visible:

1. classroom architecture and wall layout;
2. window/light direction;
3. main teaching/learning area;
4. major furniture placement;
5. floor and wall materials;
6. primary color/material language;
7. recurring educational props;
8. overall time-of-day/light quality.

Small background details may vary or become hidden when the camera changes angle. Major structural elements must not randomly change.

## Character/environment relationship

Characters should look naturally sized for the classroom. Avoid oversized characters, tiny furniture, floating feet, or inconsistent scale.

The classroom should provide clear areas for:

- direct-to-camera host performances;
- counting-object demonstrations;
- group reactions;
- object reveals;
- finale ensemble staging.

## Counting-object rule

Counting objects can appear in the classroom or in a visualized learning area, but the educational count must remain clear.

When the lyric says a quantity, the relevant objects should be staged deliberately and must not be confused with decorative duplicates elsewhere in frame.

For example, if five flowers are being counted, the five teaching flowers must be visually distinct from any unrelated floral decoration.

## S01 regeneration requirement

S01 is **not final**.

Regenerate S01 using the classroom environment established by S02.

S01 should preserve the approved performance concept:

- Leo directly engages the viewer;
- “Come along, come play with me” uses a friendly invitation;
- “There are numbers we can see” reveals subtle classroom learning elements;
- 6-second Flow generation;
- approximately 5.807 seconds used in the final edit.

### S01 environment prompt block

Add this environment direction to the S01 generation prompt:

```text
Use the same canonical preschool classroom environment established in the approved S02 generation. Maintain the same classroom architecture, wall layout, floor, furniture style, lighting direction, color/material language and educational atmosphere. The classroom is bright, warm, polished and child-friendly, with a clear open central learning area and subtle counting elements naturally integrated into the room. Do not change the room layout between generations. Do not introduce an outdoor environment.
```

## All future EP-001 shots

Until an explicit environment transition is approved, every new Flow prompt must contain a continuity instruction equivalent to:

```text
Continue in the same canonical preschool classroom environment established for EP-001. Preserve the classroom architecture, major furniture, lighting direction, materials, colors and overall layout. Only change the camera angle, character staging and story-specific objects required by the shot.
```

## Deliberate transitions

The rhyme can temporarily visualize objects in imaginative learning spaces—for example, the sky for the sun/clouds/stars or a garden-like learning display for flowers and butterflies—but these should be treated as **motivated visualizations within the classroom world**, not arbitrary new environments.

If a future beat genuinely requires a new physical location, create an explicit environment transition specification before generation. Do not allow Flow to invent the transition independently.

## Environment reference asset

After the classroom reference is selected and approved, assign a permanent asset ID such as:

`ENV-EP001-CLASSROOM-001`

That reference becomes the environment authority for all EP-001 generations.

## QC gate

Reject a generation if:

- the room architecture changes unexpectedly;
- furniture changes position without narrative reason;
- lighting direction changes significantly;
- the room becomes an unrelated location;
- major props appear/disappear unexpectedly;
- character scale becomes inconsistent with the room;
- the educational environment becomes visually cluttered;
- the shot cannot be cut into the surrounding classroom continuity.

## Supersession rule

This document supersedes any earlier EP-001 instruction that permits S01 to remain in a separate outdoor environment without an approved transition.

The **classroom is now the continuity anchor** for EP-001.