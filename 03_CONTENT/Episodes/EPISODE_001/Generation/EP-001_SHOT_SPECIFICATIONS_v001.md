# EP-001 — Shot Specifications v001

**Episode:** EP-001 — Count With Me!
**Audio master:** `EP001_Count_With_Me_PRO_Candidate_03.wav`
**Audio runtime:** 128.440 seconds
**Primary output:** YouTube 16:9
**Secondary output:** purpose-built 9:16 Shorts
**Video engine:** Google Flow
**Status:** PRODUCTION SPECIFICATION — PRE-GENERATION

---

## 1. Production Authority

This document converts the approved audio and visual beat map into generation-ready shot specifications.

### Authority chain

```text
Approved lyrics
      ↓
Candidate 03 final audio
      ↓
WhisperX alignment
      ↓
Visual Beat Map v001
      ↓
This Shot Specification
      ↓
Google Flow generations
      ↓
Editorial assembly
      ↓
QC
      ↓
16:9 master + purpose-built 9:16 Shorts
```

### Non-negotiable rules

1. **128.440 seconds is the current EP-001 audio runtime.**
2. The previous 77-second / 14-scene structure is obsolete for this audio.
3. There is no fixed scene count for this episode or future rhymes.
4. There is no fixed generation duration.
5. A generation unit exists only when the visual action requires it or the generation platform requires the split.
6. Never stretch an AI clip to fill time when the visual action has already completed.
7. Never compress a meaningful visual action merely to hit an arbitrary scene duration.
8. Audio timing is locked before visual generation.
9. The supplied approved lyric is authoritative. Whisper transcription errors are not script authority.
10. Character appearance is resolved from canonical references; prompts must not invent alternate designs.
11. Counting quantities must be visually verifiable.
12. 16:9 is the master composition. Shorts are separately composed in 9:16.

---

# 2. Canonical Cast

| Character | ID | Reference | Function in EP-001 |
|---|---|---|---|
| Leo | CHAR-01 | LEO-REF-001 | Main host / learner guide |
| Maya | CHAR-02 | MAYA-REF-001 | Co-host / question leader |
| Benny | CHAR-03 | BENNY-REF-001 | Playful frog discovery |
| Sunny | CHAR-04 | SUNNY-REF-001 | Wonder/discovery guide |
| Nora | CHAR-05 | NORA-REF-001 | Older counting guide |

**Flow rule:** use the canonical character reference/Ingredient for every appearance. Do not describe a new physical design in a shot prompt unless the canonical reference itself is being updated through an approved asset workflow.

---

# 3. Global Google Flow Prompt Grammar

Every generation prompt should follow this structure:

```text
[REFERENCE / INGREDIENTS]
[SUBJECT + ACTION]
[ENVIRONMENT + CONTINUITY]
[CAMERA + COMPOSITION]
[ANIMATION / PERFORMANCE]
[LIGHTING + STYLE]
[COUNTING / OBJECT CONSTRAINTS]
[ENDING STATE]
```

### Global visual direction

Use a polished, premium 3D preschool animation look with soft appealing shapes, expressive faces, clean readable silhouettes, warm natural lighting, gentle cinematic depth, stable character proportions, physically coherent movement, and an inviting educational atmosphere.

Avoid photorealism, horror, uncanny faces, excessive gloss, chaotic motion, handheld shake, random camera movement, rapid cuts inside generated clips, duplicate counting objects, extra characters, text artifacts, malformed hands/feet, disappearing objects, changing costumes, changing character colors, and unexplained environment changes.

### Important generation principle

Do **not** put the entire 128-second song into one Flow prompt.

Do **not** ask Flow to generate a 20-second scene simply because a lyric section lasts 20 seconds.

Generate the smallest continuous visual action that can be reliably produced, then assemble the pieces against the locked audio.

---

# 4. Shot Specification

## SHOT EP001-S01 — Opening invitation

**Audio:** 2.027–7.834
**Audio duration:** 5.807 s
**Character:** Leo
**Visual beat:** VB-01
**Framing:** 16:9 wide establishing → medium tracking
**Purpose:** establish the world and Leo as the viewer's guide.

### Action

Leo enters the bright preschool learning world with a playful, welcoming walk. He looks toward the viewer, smiles, and gestures invitingly. Simple number motifs can exist naturally in the environment, but they must not distract from Leo.

### Camera

Begin at child height in a wide composition. Smoothly track backward as Leo moves forward. Finish slightly closer to Leo without a sudden zoom.

### Flow prompt

```text
Use the canonical Leo character reference. Leo is walking playfully into a bright, safe preschool learning world, smiling warmly toward the camera and inviting the viewer to join him. He makes a natural welcoming hand gesture while continuing forward. The environment is colorful, clean, cohesive and educational, with subtle playful number motifs integrated into the environment. Child-height cinematic camera tracks backward smoothly with Leo, beginning wide and ending in a comfortable medium shot. Gentle polished 3D children's animation, expressive but controlled body language, soft natural daylight, stable character design, clean silhouettes, physically coherent movement, premium children's educational video quality. Keep Leo's canonical appearance unchanged. No extra characters, no random text, no camera shake, no fast zoom, no costume changes.
```

### Ending state

Leo remains facing the viewer, ready for Maya's question.

### QC

- Leo identity unchanged.
- No extra child characters.
- Camera movement smooth.
- Opening frame provides enough clean space for editorial title treatment if required.

---

## SHOT EP001-S02 — Maya asks / group answers

**Audio:** 8.374–9.776
**Audio duration:** 1.402 s
**Characters:** Maya + Group
**Visual beat:** VB-02
**Framing:** medium

### Action

Maya turns toward camera with an eager expression as if asking the viewer a question. Group responds with an enthusiastic reaction.

### Flow prompt

```text
Use canonical Maya and the approved group character references. Maya turns toward the camera with a bright curious expression and an inviting gesture, asking the children watching a question. The group immediately responds with cheerful enthusiastic body language. Bright cohesive preschool learning environment established by the previous shot. Medium child-height composition, gentle controlled camera hold with only a subtle push-in, expressive but natural animation, premium polished 3D children's animation, stable faces and proportions. Preserve all canonical character designs. No additional characters, no chaotic movement, no text artifacts, no camera shake.
```

### QC

Because the audio window is extremely short, do not attempt a complicated camera move. If the generated action is longer than the usable audio, use only the clean reaction portion in the edit.

---

## SHOT EP001-S03 — Leo starts counting

**Audio:** 11.718–13.260
**Duration:** 1.542 s
**Character:** Leo
**Beat:** VB-03

### Action

Leo turns attention toward the learning environment and gestures forward, inviting everyone to begin counting.

### Flow prompt

```text
Use canonical Leo. Leo warmly gestures toward the learning world as if inviting everyone to begin counting, then looks back toward the viewer with an encouraging smile. Medium child-height framing, gentle short push-in, bright cohesive preschool environment, premium polished 3D children's animation, controlled body movement and clear facial expression. Maintain canonical appearance exactly. No extra characters, no exaggerated motion, no text artifacts.
```

---

## SHOT EP001-S04 — One sun

**Audio:** 16.984–19.587
**Duration:** 2.603 s
**Character:** Leo
**Beat:** VB-04

### Visual requirement

Exactly **one** primary sun.

### Action

Leo looks upward and points. Camera follows his gaze to one bright sun.

### Flow prompt

```text
Use canonical Leo. In the same cohesive preschool outdoor world, Leo looks upward with wonder and points toward exactly one bright cheerful sun in the sky. The camera gently tilts upward following his gaze and settles on the single sun while keeping Leo partially readable in the lower frame. Child-height cinematic composition, soft warm daylight, polished 3D children's animation, clear readable silhouettes, smooth motion. Exactly one primary sun; no duplicate suns. Preserve Leo's canonical design and the established environment. No text, no extra characters, no camera shake.
```

---

## SHOT EP001-S05 — Two clouds

**Audio:** 20.493–23.654
**Duration:** 3.161 s
**Character:** Leo optional foreground
**Beat:** VB-05

### Visual requirement

Exactly **two** primary fluffy clouds.

### Flow prompt

```text
Continue the same sky and preschool world. Exactly two distinct fluffy white clouds gently drift across the blue sky, clearly separated and easy for a young child to count. Leo may remain small in the lower foreground looking upward. Smooth lateral camera movement following the clouds, soft daylight, premium polished 3D children's animation, clean shapes and readable composition. Exactly two primary clouds and no duplicate cloud forms that could confuse the count. No text, no random objects, no environment reset.
```

---

## SHOT EP001-S06 — Three birds in the tree

**Audio:** 24.114–30.796
**Duration:** 6.682 s
**Character:** Leo + Group
**Beat:** VB-06

### Action

Reveal one tree containing exactly three countable birds. Leo notices them. The count lands on all three.

### Flow prompt

```text
Use canonical Leo and approved group references. In the same preschool world, Leo notices a friendly tree with exactly three small colorful birds perched clearly apart from one another. The birds make gentle natural movements while remaining individually visible. Leo points toward them and the group reacts with cheerful counting energy. Begin in a medium view of Leo and the tree, then make a gentle push toward the three birds for a clear countable composition. Premium polished 3D children's animation, soft daylight, stable character identity, smooth camera movement. Exactly three countable birds; no extra birds in background. No text, no duplicates, no chaotic flying.
```

### Split rule

If Flow cannot preserve exactly three birds through the full action, generate the reveal and counting payoff as separate units and cut at the natural gesture/count transition.

---

## SHOT EP001-S07 — Four butterflies

**Audio:** 31.536–34.677
**Duration:** 3.141 s
**Character:** Maya
**Beat:** VB-07

### Visual requirement

Exactly **four** primary butterflies.

### Flow prompt

```text
Use canonical Maya. Maya stands in the same bright preschool garden as exactly four colorful butterflies flutter gently around her. She watches them with delighted curiosity and lightly follows their movement with her eyes and hands. Child-height medium tracking shot, smooth gentle arc around Maya, butterflies remain clearly separated and countable. Premium polished 3D preschool animation, warm natural daylight, clean silhouettes, stable canonical Maya design. Exactly four primary butterflies; no extra butterflies in the background. No chaotic flight, no duplicated insects, no text artifacts.
```

---

## SHOT EP001-S08 — Five flowers

**Audio:** 34.697–39.399
**Duration:** 4.702 s
**Character:** Maya + Group
**Beat:** VB-07

### Visual requirement

Exactly **five** primary flowers.

### Action

Camera transitions from butterfly area downward to the ground, revealing five bright flowers.

### Flow prompt

```text
Continue from the same garden. The camera gently moves downward from Maya toward the ground, revealing exactly five bright cheerful flowers growing in a clear arrangement. Maya gestures toward the flowers while the group reacts. Keep all five flowers fully visible and individually countable at the end of the shot. Smooth tilt-down, child-friendly composition, premium polished 3D animation, soft daylight, cohesive environment and color palette. Exactly five primary flowers and no confusing duplicate flowers nearby. Preserve Maya's canonical appearance. No text, no abrupt camera movement.
```

---

## SHOT EP001-S09 — Count five

**Audio:** 39.439–43.000
**Duration:** 3.561 s
**Characters:** Maya + Group
**Beat:** VB-08

### Action

Maya asks the counting question. Group counts five while the five flowers remain visible.

### Flow prompt

```text
Use canonical Maya and group references. Maya faces the viewer beside the same arrangement of exactly five bright flowers and invites the children to count them. The group responds enthusiastically while the camera holds a stable composition in which all five flowers remain visible and individually countable. Medium-to-wide child-height framing, minimal camera movement, expressive but controlled gestures, premium polished 3D children's animation. Exactly five primary flowers. No extra flowers, no object duplication, no text artifacts, no camera shake.
```

### Edit note

The audio contains the question followed by the count. A clean edit may cut from Maya's question to a stable flower/group counting view rather than forcing one generated performance to perform both actions.

---

## SHOT EP001-S10 — Six frogs

**Audio:** 46.338–52.983
**Duration:** 6.645 s
**Character:** Benny
**Beat:** VB-09

### Visual requirement

Exactly **six** frogs.

### Action

Benny discovers six frogs. They hop rhythmically. Benny reacts playfully.

### Flow prompt

```text
Use canonical Benny. In the same cohesive preschool world, Benny discovers exactly six friendly little frogs gathered in a clear open patch of grass. The six frogs perform a playful synchronized hop-hop-hop while Benny reacts with delighted surprise and playful encouragement. Keep the six frogs individually readable throughout the important count moment. Child-height lateral tracking with a gentle low angle, smooth controlled motion, premium polished 3D children's animation, soft daylight, expressive but stable character animation. Exactly six primary frogs, no extra frogs, no duplicated animals, no disappearing frogs, no chaotic jumping, no text artifacts.
```

### QC

If the frogs merge, duplicate, disappear, or become uncountable, reject the generation.

---

## SHOT EP001-S11 — Seven stars

**Audio:** 53.584–60.509
**Duration:** 6.925 s
**Character:** Sunny
**Beat:** VB-10

### Visual requirement

Exactly **seven** primary stars.

### Flow prompt

```text
Use canonical Sunny. Sunny looks upward from the same preschool world as evening-like magical light begins to appear. Exactly seven small friendly stars gradually appear one by one in a clear gentle line in the sky. Sunny watches with wonder, following the stars with his gaze. Smooth upward camera tilt from Sunny into the sky, ending on all seven stars clearly separated and countable. Premium polished 3D children's animation, magical but safe and cheerful, soft luminous lighting, stable Sunny design. Exactly seven primary stars, no duplicate stars forming confusing countable objects, no text, no abrupt transformation.
```

---

## SHOT EP001-S12 — Six, seven reaction

**Audio:** 60.529–61.530
**Duration:** 1.001 s
**Characters:** Group
**Beat:** VB-11

### Strategy

This is a micro-beat. It does **not** require an elaborate standalone generation.

### Preferred visual

Use a clean reaction/pickup of the group pointing upward with joyful recognition, potentially reusing the end state of the star shot if the edit supports it.

### Flow prompt if a pickup is required

```text
Use the approved group reference in the established preschool world. The group looks upward and points with cheerful recognition, celebrating the counting discovery. Very short controlled reaction, medium-wide framing, stable camera, premium polished 3D children's animation. No new objects, no extra characters, no text.
```

---

## SHOT EP001-S13 — Eight balloons rising

**Audio:** 61.710–68.935
**Duration:** 7.225 s
**Character:** Leo + Group
**Beat:** VB-12

### Visual requirement

Exactly **eight** balloons. Red, blue, and yellow must be visibly represented.

### Flow prompt

```text
Use canonical Leo and approved group references. In the same cohesive preschool world, exactly eight colorful balloons begin rising upward into the sky. The balloons are clearly separated and visibly include red, blue, and yellow. Leo and the group look upward and guide the viewer's attention toward them. The camera smoothly tilts and cranes upward following the balloons, ending with all eight visible in a readable arrangement. Premium polished 3D children's animation, warm cheerful daylight, stable character identity, physically coherent balloon motion. Exactly eight primary balloons; no extra balloons; no duplicated or disappearing balloons; no text artifacts; no chaotic camera movement.
```

### Split rule

If one generation cannot maintain eight balloons and the characters coherently, split into: **rise** → **eight/color payoff**. The split is justified by visual reliability, not by a target duration.

---

## SHOT EP001-S14 — Nine butterflies

**Audio:** 71.997–79.082
**Duration:** 7.085 s
**Character:** Maya
**Beat:** VB-13

### Visual requirement

Exactly **nine** primary butterflies.

### Flow prompt

```text
Use canonical Maya. Maya stands in a beautiful section of the same preschool garden while exactly nine colorful butterflies dance gently around her and nearby trees. The butterflies move gracefully and slowly enough to remain individually readable. Maya smiles and follows them with gentle hand gestures. Smooth medium tracking shot with a subtle cinematic arc, soft warm lighting, premium polished 3D preschool animation, stable Maya identity and cohesive environment. Exactly nine primary butterflies; no extra butterflies, no chaotic swarm, no duplicated insects, no text.
```

---

## SHOT EP001-S15 — Ten bells

**Audio:** 79.382–82.644
**Duration:** 3.262 s
**Character:** Nora + Group
**Beat:** VB-14

### Visual requirement

Exactly **ten** primary bells.

### Action

Nora introduces the bells. The bells visibly ring as the group reacts.

### Flow prompt

```text
Use canonical Nora and approved group references. Nora presents exactly ten small cheerful bells arranged clearly so a young child can understand the quantity. The bells gently ring with playful synchronized movement as the group reacts happily. Start in a medium shot of Nora, then make a short controlled move toward the bells for a clear countable view. Premium polished 3D children's animation, warm safe preschool atmosphere, stable character design, smooth physically coherent bell movement. Exactly ten primary bells, no duplicate bells, no disappearing bells, no text artifacts.
```

### Split rule

It is acceptable to generate Nora's presentation and the bell ringing payoff as separate shots if this produces cleaner results.

---

## SHOT EP001-S16 — Count ten

**Audio:** 83.685–90.849
**Duration:** 7.164 s
**Character:** Nora + Group
**Beat:** VB-15

### Visual requirement

A stable ten-object counting composition.

### Flow prompt

```text
Use canonical Nora and group references. Nora invites the children watching to count the ten clearly arranged counting objects. Keep exactly ten objects visible in a stable, highly readable arrangement while the group counts from one through ten. The camera should remain mostly stable with only a very subtle push-in. Every object must remain visible and countable for the counting sequence. Premium polished 3D preschool animation, clean composition, soft lighting, stable characters and objects. Exactly ten countable objects, no duplicates, no object disappearance, no camera shake, no distracting background objects, no text artifacts.
```

### QC

This is an educational counting shot. **Readability outranks cinematic camera movement.**

---

## SHOT EP001-S17 — Count together

**Audio:** 90.909–98.174
**Duration:** 7.265 s
**Characters:** Leo + Group
**Beat:** VB-16/VB-17

### Action

Leo and group invite everyone to count together, then count one through ten.

### Flow prompt

```text
Use canonical Leo and group references in the established central preschool world. Leo faces the viewer with encouraging energy and gestures for everyone to count together. The group joins him and performs a synchronized playful counting routine from one through ten. Keep the environment stable and use subtle rhythmic gestures or simple visual number cues rather than complex transformations. Medium-wide child-height composition with a gentle controlled push-in. Premium polished 3D children's animation, expressive faces, stable character proportions, clean readable staging. No extra characters, no chaotic motion, no random text artifacts.
```

---

## SHOT EP001-S18 — Faster challenge setup

**Audio:** 98.374–99.775
**Duration:** 1.401 s
**Character:** Leo
**Beat:** VB-18

### Flow prompt

```text
Use canonical Leo. Leo gives the viewer a playful confident expression and a small energetic gesture signaling that the next counting round will be faster. Medium close-up, stable camera, quick readable facial performance, premium polished 3D children's animation. No exaggerated motion, no camera shake, no text artifacts.
```

---

## SHOT EP001-S19 — Faster count

**Audio:** 100.055–105.579
**Duration:** 5.524 s
**Characters:** Group
**Beat:** VB-19

### Action

The group performs the faster one-to-ten count. Visual rhythm accelerates through simple gestures/highlights, not chaotic camera movement.

### Flow prompt

```text
Use the approved group references in the established preschool world. The group performs an energetic faster counting sequence from one through ten, with synchronized playful gestures that become slightly quicker while remaining readable for young children. Keep the camera controlled and stable; create the sense of speed through performance rhythm rather than frantic camera movement. Medium-wide composition, subtle rhythmic push, premium polished 3D children's animation, stable faces and proportions. No chaotic movement, no extra characters, no random number text, no object duplication.
```

---

## SHOT EP001-S20 — Celebration

**Audio:** 106.079–106.679
**Duration:** 0.600 s
**Character:** Maya
**Beat:** VB-20

### Strategy

Do not force Google Flow to generate a 0.6-second clip. Generate a slightly longer clean celebration performance if necessary and use only the exact audio-aligned portion in the edit.

### Flow prompt

```text
Use canonical Maya. Maya gives a bright joyful celebratory reaction, smiling and lifting her hands slightly as if saying we did it. Medium close-up, stable camera, premium polished 3D children's animation, clean expressive face, no exaggerated motion, no text.
```

---

## SHOT EP001-S21 — Ensemble returns

**Audio:** 107.200–112.703
**Duration:** 5.503 s
**Characters:** All approved cast / Group
**Beat:** VB-21

### Action

The characters gather together in the central world and invite another count.

### Flow prompt

```text
Use canonical Leo, Maya, Benny, Sunny and Nora with the approved group reference. All characters gather naturally in the established central preschool world and face toward the viewer with warm cheerful expressions. Leo and the others make inviting gestures encouraging another counting round. Wide ensemble composition at child height, gentle slow push toward the group, cohesive lighting and environment, premium polished 3D children's animation, stable character proportions and clear spacing between characters. No extra characters, no wardrobe changes, no random text, no chaotic movement.
```

---

## SHOT EP001-S22 — Finale count groups

**Audio:** 113.044–120.749
**Duration:** 7.705 s
**Characters:** Group / all cast
**Beat:** VB-22

### Visual concept

The final count should visually build in three groups: 1–3, 4–6, 7–9. Avoid cluttering the screen with nine moving objects. Use simple grouped visual cues in the established environment.

### Flow prompt

```text
Use the approved full cast/group references in the established preschool world. During the final counting build, the characters perform three clear rhythmic counting gestures: first one-two-three, then four-five-six, then seven-eight-nine. Use simple grouped visual cues or highlighted counting objects that appear in organized groups, keeping every count visually understandable. The camera makes a gentle progressive movement toward the ensemble without becoming frantic. Premium polished 3D preschool animation, cheerful finale energy, stable characters, clean silhouettes, clear educational staging. No confusing duplicate objects, no random text, no chaotic effects, no camera shake.
```

### Split rule

If Flow cannot execute all three rhythmic group changes cleanly, generate separate units at the natural group boundaries and assemble them to the audio.

---

## SHOT EP001-S23 — TEN payoff

**Audio:** 121.029–122.430
**Duration:** 1.401 s
**Characters:** Group / all cast
**Beat:** VB-23

### Action

The group celebrates the final **TEN**. The number can be added during post-production if generated text is unreliable.

### Flow prompt

```text
Use canonical full cast and group references. Everyone celebrates the successful count together with a joyful synchronized reaction, smiling and raising their hands in a clear final payoff. Hero-wide child-height composition with a gentle short push toward the ensemble. Leave clean visual space for the number TEN to be added during editing rather than relying on generated text. Premium polished 3D children's animation, warm celebratory lighting, stable character identities, clear readable silhouettes. No generated text, no extra characters, no chaotic movement.
```

### Post-production

Prefer adding a clean graphic “TEN!” in the editor rather than asking Flow to render readable typography.

---

## SHOT EP001-S24 — Leo viewer acknowledgment

**Audio:** 122.751–123.911
**Duration:** 1.160 s
**Character:** Leo
**Beat:** VB-24

### Flow prompt

```text
Use canonical Leo. Leo looks directly into the camera with a warm proud smile and a small friendly gesture toward the viewer, acknowledging their successful counting. Medium close-up, stable child-height camera, premium polished 3D children's animation, soft warm light, expressive but controlled performance. No text, no camera shake, no costume changes.
```

---

## SHOT EP001-S25 — Final invitation

**Audio:** 124.532–125.813
**Duration:** 1.281 s
**Characters:** Group / all cast
**Beat:** VB-25

### Flow prompt

```text
Use the approved full cast/group references. The characters cheerfully gesture toward the viewer, inviting them to join another round. Medium-wide ensemble, stable camera, bright cohesive preschool world, premium polished 3D children's animation, warm friendly expressions, controlled motion. No new characters, no text artifacts, no camera shake.
```

---

## SHOT EP001-S26 — Final tableau

**Audio:** 125.813–128.440
**Duration:** 2.627 s
**Characters:** All cast
**Beat:** VB-26

### Action

Hold the complete cast in a satisfying final pose with subtle living motion. Do not end with frozen AI faces.

### Flow prompt

```text
Use canonical Leo, Maya, Benny, Sunny and Nora with the approved group references. Hold a joyful final ensemble tableau in the established preschool world. Everyone remains happily present with subtle natural idle movement, gentle breathing, small friendly gestures and warm smiles while maintaining the same composition. Wide hero composition, extremely slow cinematic push-in, soft warm lighting, premium polished 3D children's animation, stable character identities and cohesive environment. No new characters, no sudden movement, no camera shake, no text artifacts, no environment reset.
```

---

# 5. Generation Unit Decision Matrix

The shot list above is an **editorial starting structure**, not a fixed number of generations.

Before generating each shot, apply this decision test:

| Question | If YES | If NO |
|---|---|---|
| Is one continuous action visually coherent? | Keep together | Split at natural action boundary |
| Can Flow preserve character identity throughout? | Keep together | Split or simplify action |
| Can all counting objects remain countable? | Keep together | Split/reframe |
| Does camera movement serve the action? | Keep movement | Simplify/lock camera |
| Does the shot contain two unrelated visual subjects? | Split | Keep together |
| Is the audio window shorter than a practical generation? | Generate usable longer clip and trim | Generate normally |
| Would splitting improve editorial control? | Split | Keep together |

**There is no numerical scene-count target.**

---

# 6. Flow Reference / Ingredients Policy

## Character references

Use the canonical character references for every shot containing a named character.

## Environment references

Create and lock the primary preschool environment before generating the full episode. Reuse the same environment reference where Flow supports it.

## Object references

For educational counting objects, use consistent visual designs where possible:

- sun
- clouds
- birds
- butterflies
- flowers
- frogs
- stars
- balloons
- bells

The objects should belong to the same visual universe and not look like unrelated generations.

## Reference priority

When continuity conflicts occur, prioritize:

1. canonical character identity;
2. environment continuity;
3. exact counting quantity;
4. action readability;
5. camera continuity;
6. decorative detail.

---

# 7. Negative Constraints

Apply the relevant constraints to every generation:

```text
No extra characters. No character redesign. No costume changes. No changing colors or proportions. No duplicate counting objects. No missing counting objects. No objects appearing or disappearing without narrative reason. No warped faces. No malformed hands or feet. No floating body parts. No camera shake. No frantic camera movement. No random zooms. No abrupt environment changes. No unrelated props. No generated captions or typography. No watermarks. No horror or uncanny expressions. No photorealistic humans. No inconsistent lighting. No object count ambiguity.
```

Additional shot-specific constraints override generic ones when necessary.

---

# 8. Audio / Visual Synchronization Policy

The final audio remains the master timeline.

### Do not attempt to lip-sync every word through generated character dialogue unless the chosen Flow workflow has been specifically validated for that purpose.

For EP-001, the safer production method is:

```text
Candidate 03 audio = master
        ↓
Generate visual performance to match action and emotional timing
        ↓
Assemble clips against exact audio timestamps
        ↓
Use editorial cuts / reactions to hide imperfect generated mouth motion
```

The visual must make the audio feel synchronized even when exact generated lip synchronization is not required.

---

# 9. Assembly Specification

## Master

- Aspect ratio: 16:9
- Resolution target: YouTube production master
- Audio: Candidate 03 unchanged
- Runtime: 128.440 seconds unless the approved master audio is subsequently replaced
- Frame rate: lock during project setup and keep consistent across all generations and final render

## Assembly order

1. Place Candidate 03 audio on the master timeline.
2. Place audio markers using the approved alignment map.
3. Build visual beats in order.
4. Insert generation units against their intended visual windows.
5. Trim clips to the audio-led editorial timing.
6. Use J/L cuts and reaction overlap where appropriate.
7. Add post-production number graphics only where generated text would be unreliable.
8. Add music/SFX only after the master song balance is preserved.
9. QC every counting quantity.
10. QC character continuity.
11. QC visual/audio timing.
12. Render 16:9 master.
13. Create separate 9:16 Short timelines from selected moments.

---

# 10. 9:16 Shorts Production Rule

Do not crop the finished 16:9 episode and call that the Short.

For each selected Short:

```text
Short concept
   ↓
Select audio window
   ↓
Identify visual beats
   ↓
Redesign composition for 9:16
   ↓
Generate/reframe required close shots
   ↓
Edit to original audio
   ↓
Add hook / CTA graphics
```

### Priority Shorts

**SHORT-01 — Count 1–5**

Use the flower counting challenge. Start with the question/hook rather than a slow introduction.

**SHORT-02 — Six Frogs + Seven Stars**

Use Benny's frog discovery followed by Sunny's stars. Preserve the educational count.

**SHORT-03 — Eight Balloons**

Use the rising colored balloons and eight payoff.

**SHORT-04 — Nine Butterflies + Ten Bells**

Use the two final discovery concepts before the main count.

**SHORT-05 — Can You Count to Ten?**

Use the interactive counting section and faster challenge.

**SHORT-06 — TEN!**

Use the final count and celebration as a high-energy payoff short.

---

# 11. QC Acceptance Gates

A generated clip is **ACCEPTED** only when all applicable gates pass.

### Character

- Correct canonical character.
- Stable face and proportions.
- Stable wardrobe/colors.
- No unwanted character substitutions.

### Counting

- Exact quantity visible where required.
- Objects remain individually countable.
- No accidental duplicates.
- No accidental disappearances.

### Motion

- Action matches the intended visual beat.
- No impossible body/object motion.
- No distracting AI artifacts.

### Camera

- Framing serves the lyric.
- Camera motion is intentional.
- No unnecessary shake or zoom.

### Continuity

- Environment matches adjacent shots.
- Lighting remains coherent.
- Screen direction remains coherent where practical.
- Character position transitions are believable.

### Editorial

- Clip can be cut cleanly to the locked audio.
- No important visual action is prematurely truncated.
- No dead AI motion is retained merely to fill duration.

### Educational clarity

A child should be able to understand the intended number and object without pausing the video.

---

# 12. Rejection Conditions

Reject and regenerate if:

- the object count is wrong;
- the canonical character is visibly altered;
- a character disappears or morphs;
- the action contradicts the lyric;
- the visual becomes too busy to count;
- camera movement obscures the teaching object;
- generated text is malformed;
- the environment changes unexpectedly;
- the shot depends on an impossible continuity jump;
- the clip is being retained only because it fills a predetermined duration.

---

# 13. Production Status

### Ready now

- Candidate 03 audio locked for EP-001.
- Audio timing established.
- Visual Beat Map established.
- Shot specification established.
- Google Flow selected as production engine.
- 16:9 master established.
- 9:16 Shorts strategy established.

### Still required before actual generation

1. Verify the canonical character reference files/Ingredients are present and usable in Flow.
2. Verify the primary environment reference.
3. Generate a small continuity test for Leo + environment before mass generation.
4. Generate the first approved production shot.
5. Evaluate character consistency and visual style.
6. Lock any required Flow-specific prompt adjustments.
7. Proceed sequentially through the episode.

**Do not mass-generate the entire episode before the first continuity test passes.**
