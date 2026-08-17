# EP-001 — Visual Beat Map v001

**Episode:** EP-001 — Count With Me!
**Audio master:** Candidate 03
**Audio runtime:** 128.440 seconds
**Primary format:** YouTube 16:9
**Secondary format:** purpose-built 9:16 Shorts
**Visual engine:** Google Flow
**Status:** PLANNING / READY FOR SHOT SPECIFICATION
**Authority inputs:**
- `EP-001_AUDIO_TIMECODE_MAP_v001.md`
- User-approved Candidate 03 lyrics
- Canonical Character Universe

## Purpose

Convert the approved audio timeline into a production-grade visual plan without imposing a universal scene count or assumed duration.

The audio determines timing. The visual plan determines how that timing is expressed through beats, shots, staging, camera movement, continuity, and generation units.

## Core production rule

**There is no fixed scene count and there is no fixed visual duration rule.**

A future rhyme may have 8 scenes, 17 scenes, 31 scenes, or another number. We decide the structure from the actual rhyme, audio, visual storytelling, continuity, and generation constraints.

A visual scene/beat must never be stretched to an arbitrary duration merely to satisfy a scene-count target. Likewise, a short beat must not be padded just to reach a preferred clip length.

### Hierarchy

```text
Approved lyrics
      ↓
Final audio
      ↓
Audio landmarks
      ↓
Visual story beats
      ↓
Shot / scene requirements
      ↓
Generation units
      ↓
Edit / assembly
```

### Visual beat vs generation unit

These are deliberately different concepts:

- **Visual beat:** the smallest meaningful storytelling/visual idea required by the rhyme.
- **Shot/scene:** an editorially coherent visual presentation of one or more beats.
- **Generation unit:** the amount of continuous action we ask Google Flow to generate in one usable clip.

One visual beat may fit in one generation unit, or it may need multiple generation units. Several closely related beats may be combined into one shot when continuity and visual clarity improve.

**Generation duration is determined by the continuous visual action and the generator's practical capabilities—not by a universal 4–8 second rule.**

## Authority Rules

1. Candidate 03 audio at 128.440 seconds is the timing authority for EP-001.
2. The approved lyrics supplied for EP-001 are the lyric authority.
3. WhisperX timestamps are alignment evidence only; transcription errors must not become script text.
4. The previous 14-scene / 77-second structure is historical and superseded for EP-001 timing.
5. There is no universal scene count for this channel.
6. A visual beat may contain one or more lyric lines.
7. A visual beat may require more than one generation unit.
8. Generation units are production/editing units, not new storytelling boundaries.
9. Canonical characters resolve through the Character Universe chain and must not be redesigned in prompts.
10. The 16:9 master is composed first. Shorts are separately composed for 9:16 and are not simple crops of the master.

## Canonical Character Resolution

| Invocation | ID | Reference |
|---|---|---|
| @Leo | CHAR-01 | LEO-REF-001 |
| @Maya | CHAR-02 | MAYA-REF-001 |
| @Benny | CHAR-03 | BENNY-REF-001 |
| @Sunny | CHAR-04 | SUNNY-REF-001 |
| @Nora | CHAR-05 | NORA-REF-001 |

## Visual Grammar for EP-001

### Story world

A bright, safe, playful preschool learning environment. The world should feel like one continuous place rather than a collection of unrelated AI scenes.

### Camera language

- Gentle child-height camera perspective.
- Smooth dolly, push-in, pan, tilt, and small arcs.
- Deliberate movement; no frantic camera shake.
- Use close-ups for counting objects and reactions.
- Use medium/wide shots for character interaction.
- Use overhead or elevated views only when they materially improve counting clarity.

### Animation language

- Expressive but controlled body movement.
- Clear readable actions timed to words.
- Counting objects should be visually separable and easy to count.
- Object introductions should be staged sequentially rather than appearing as an unexplained crowd.
- Avoid visual clutter when a number is being taught.

### Continuity language

- Maintain consistent world lighting and time-of-day feel.
- Preserve character wardrobe, proportions, colors, and signature visual identity through canonical references.
- Maintain screen direction between adjacent shots whenever possible.
- When changing location within the same world, use motivated camera movement or visual transition rather than an arbitrary hard reset.

## Visual Beat Map

| Beat | Audio | Duration | Characters | Visual story / action | Camera / framing | Initial shot logic |
|---|---|---:|---|---|---|---|
| VB-01 | A01 2.027–7.834 | 5.807 | Leo | Leo welcomes the viewer and starts walking/playing into the learning world. Numbers are introduced as playful floating symbols or environmental learning cues. | Wide-to-medium child-height tracking shot. | One continuous shot if the action remains coherent. |
| VB-02 | A02–A03 8.374–9.776 | 1.402 | Maya + Group | Maya turns toward camera with an inviting question; group responds enthusiastically. | Medium two-shot / quick reaction cut. | Treat as a reaction beat; do not pad to a target duration. |
| VB-03 | A04 11.718–13.260 | 1.542 | Leo | Leo gestures toward the first counting discovery and invites everyone to begin. | Medium push-in. | Short pickup or join to adjacent setup if continuity allows. |
| VB-04 | A05 16.984–19.587 | 2.603 | Leo | A single bright sun appears clearly in the sky. Leo looks up and points. | Tilt/pan from Leo to sun; finish on readable sun. | One compact shot. |
| VB-05 | A06 20.493–23.654 | 3.161 | Leo | Two fluffy clouds drift into view, visibly separated. | Wide sky composition with gentle lateral camera movement. | One compact shot. |
| VB-06 | A07–A08 24.114–30.796 | 6.682 | Leo + Group | Three birds appear in a tree; Leo reacts, then group counts exactly three. Each bird should be readable. | Medium tree shot → slight push-in → count-focused framing. | One shot if Flow can maintain three birds; otherwise split at the count transition. |
| VB-07 | A09–A11 31.536–39.399 | 7.863 | Maya + Group | Four butterflies flutter around Maya; five bright flowers are revealed on the ground. Group emphasizes four then five. | Medium follow on butterflies → tilt down to flowers → close counting view. | Likely two shots because the visual subject changes from butterflies to flowers. |
| VB-08 | A12–A13 39.439–43.000 | 3.561 | Maya + Group | Maya asks the counting question. Group counts five visible flowers clearly. | Medium Maya → close/medium group and flowers. | Question and count may be separate pickups if needed; no padding. |
| VB-09 | A14 46.338–52.983 | 6.645 | Benny | Benny discovers six frogs. Frogs hop rhythmically while Benny reacts playfully. The six frogs remain countable. | Low child-height / playful lateral tracking; brief close-up on hopping feet. | One continuous action if countability survives the motion. |
| VB-10 | A15 53.584–60.509 | 6.925 | Sunny | Sunny looks upward as seven little stars appear one by one and twinkle in a line. | Upward tilt from Sunny to sky; gentle arc around Sunny. | One shot unless sequential star appearance becomes unstable. |
| VB-11 | A16 60.529–61.530 | 1.001 | Group | Group points/reaches toward the six frogs and seven stars as they say six, seven. | Quick wide reaction shot. | Pickup or end of previous shot; do not force standalone generation if unnecessary. |
| VB-12 | A17–A18 61.710–69.776 | 8.066 | Leo + Group | Eight balloons rise high. Colors red, blue, yellow are clearly distinguishable. Leo guides attention upward; group lands on eight. | Upward crane/tilt following balloons; maintain all eight visible near count moment. | Split only if the rise and final count cannot be generated coherently in one action. |
| VB-13 | A19–A20 71.997–79.082 | 7.085 | Maya | Nine butterflies dance gently around trees and Maya. Motion should be soft and graceful, not chaotic. | Medium tracking around Maya and butterflies; shallow push-in. | One continuous shot if nine butterflies remain countable; otherwise split discovery/count. |
| VB-14 | A21–A22 79.382–82.644 | 3.262 | Nora + Group | Nora presents ten little bells; group creates a clear ring-ring-ring musical visual moment. | Medium Nora → close-up bells → group reaction. | Likely two shots because speaker and bell payoff have different visual priorities. |
| VB-15 | A23–A24 83.685–90.849 | 7.164 | Nora + Group | Nora asks viewers to count. Ten countable objects remain in a clear arrangement while Group counts one through ten. | Stable wide/medium composition designed for counting; minimal camera movement. | Keep stable; split only if object continuity fails. |
| VB-16 | A25 90.909–92.110 | 1.201 | Leo + Group | Leo and Group invite everyone to count together. | Medium group shot with direct-to-camera energy. | Short pickup or part of a continuous chorus shot. |
| VB-17 | A26 92.710–98.174 | 5.464 | Group | Group counts one through ten together. Visual counters can illuminate or highlight sequentially without changing the environment. | Mostly locked medium/wide; subtle rhythmic push. | One shot if the visual counting mechanism remains clean. |
| VB-18 | A27 98.374–99.775 | 1.401 | Leo | Leo signals the faster challenge with playful confidence. | Close/medium Leo reaction. | Short pickup; no artificial extension. |
| VB-19 | A28 100.055–105.579 | 5.524 | Group | Faster one-to-ten count. Use rhythmic visual highlights that accelerate while remaining readable. | Slightly faster controlled camera rhythm; no chaotic movement. | One shot if the accelerated action remains readable. |
| VB-20 | A29 106.079–106.679 | 0.600 | Maya | Maya celebrates: We did it! | Close-up celebration reaction. | Prefer editorial pickup or overlap with adjacent reaction rather than forcing a standalone generated clip. |
| VB-21 | A30 107.200–112.703 | 5.503 | Group | Group returns to the central world and invites viewers to count again. Characters gather together. | Wide ensemble shot → gentle push toward group. | One continuous ensemble shot if staging permits. |
| VB-22 | A31–A32 113.044–120.749 | 7.705 | Group | Finale count builds: one-two-three, four-five-six, seven-eight-nine. Visual counting elements appear in three rhythmic groups. | Three-stage camera progression or object grouping; keep count visually obvious. | Split by visual grouping if needed; do not split solely by duration. |
| VB-23 | A33 121.029–122.430 | 1.401 | Group | TEN! Big joyful visual payoff. All characters can react together while the number ten is visually dominant. | Hero wide shot with controlled push-in toward “10” visual. | Dedicated payoff shot is justified by the dramatic beat. |
| VB-24 | A34 122.751–123.911 | 1.160 | Leo | Leo directly acknowledges the viewer: You counted with me! | Medium close-up, warm eye contact. | Short pickup. |
| VB-25 | A35 124.532–125.813 | 1.281 | Group | Group invites another round with cheerful gesture toward camera. | Medium/wide ensemble. | Short pickup or part of final tableau. |
| VB-26 | A36 125.813–128.440 | 2.627 | Group / all cast | Instrumental tail. Hold a satisfying final tableau; characters remain alive with subtle idle motion rather than ending abruptly. | Wide hero composition; extremely slow push or gentle breathing motion. | One end tableau; duration follows the audio tail exactly. |

## Shot Construction Rules

### A shot should exist because of a visual reason

Create a new shot when there is a meaningful change in:

- subject;
- action;
- character focus;
- spatial relationship;
- camera purpose;
- educational/counting requirement;
- emotional beat;
- continuity requirement.

Do **not** create a new shot merely because a timer reaches a predetermined number.

### A shot may span multiple lyric lines

If the visual action naturally continues across several lyric lines, keep it continuous. The audio can contain multiple lines without requiring a visual cut after each line.

### A shot may be shorter than a lyric section

If a visual action completes early, cut to the next meaningful visual. Never stretch an action with empty AI motion simply to fill time.

### A shot may require multiple generation units

If Google Flow cannot reliably generate the entire continuous shot in one generation, divide it into generation units at natural action boundaries and stitch them during assembly.

### Generation duration is a constraint, not a creative target

We will choose the duration of each generation unit based on:

1. required continuous action;
2. Google Flow's available output duration;
3. continuity reliability;
4. character/object consistency;
5. editing flexibility.

We will **not** use a universal target such as 4, 6, 8, 10, or 20 seconds across all scenes.

## Character Direction

### Leo

Primary visual host. Drives the opening, first discovery, balloon section, faster-count challenge, and direct viewer interaction. Maintain warm, encouraging energy rather than constant exaggerated motion.

### Maya

Creative co-host. Leads the butterfly/flower section, asks counting questions, leads the nine-butterfly section, and celebrates the result. Her visual behavior should feel expressive and curious.

### Benny

Comedy/emotional companion. His frog section should provide physical comedy through hopping and reaction while keeping the six frogs countable.

### Sunny

Discovery companion. His star section should feel wonder-filled and observational. Use gaze direction to naturally reveal the stars.

### Nora

Older guide. Her bell/counting section should feel slightly more organized and reassuring, providing a natural transition into the first full one-to-ten count.

## Counting Visibility Standard

When the lyric teaches a number, the corresponding quantity must be visually verifiable.

Examples:

- one sun → exactly one clearly visible sun;
- two clouds → exactly two primary clouds;
- three birds → exactly three countable birds;
- four butterflies → exactly four butterflies during the count moment;
- five flowers → exactly five primary flowers;
- six frogs → six countable frogs;
- seven stars → seven countable stars;
- eight balloons → eight countable balloons;
- nine butterflies → nine countable butterflies;
- ten bells/counting objects → ten countable objects.

Background decoration must not create confusing duplicate objects that could be interpreted as part of the teaching count.

## Transition Plan

Use transitions motivated by the story world:

- sky → clouds → tree through camera movement;
- ground → flowers → frogs through downward/forward movement;
- frog area → sky/stars through Sunny's upward gaze;
- stars → balloons through continued upward movement;
- balloons → butterflies through a gentle return toward the ground;
- butterflies → bells through Nora entering the same shared world;
- counting sections increasingly return to the ensemble/world to build toward the finale.

Avoid random wipes, excessive effects, or unrelated location changes.

## 16:9 Master Composition

Target: **YouTube landscape 16:9**.

Keep important faces, counting objects, and educational visual cues within a central safe area so later reframing is possible where practical. Do not compromise the 16:9 composition merely to make Shorts crops possible.

## 9:16 Shorts Strategy

Shorts are separate editorial products.

Candidate Shorts from EP-001:

1. **Count 1–5** — flowers/counting challenge, based on VB-07/VB-08.
2. **Six Frogs + Seven Stars** — Benny/Sunny discovery sequence, based on VB-09–VB-11.
3. **Eight Balloons** — color/counting payoff, based on VB-12.
4. **Nine Butterflies + Ten Bells** — VB-13/VB-14.
5. **Can You Count to Ten?** — VB-15–VB-19, optimized as an interactive challenge.
6. **The Big TEN!** — VB-21–VB-24, optimized as a celebration/payoff short.

Each Short should receive its own 9:16 shot composition and, where necessary, newly generated close framing. Do not simply crop the 16:9 master.

## QC Gates Before Generation

A visual beat is not ready for Google Flow until:

- audio start/end is known;
- approved lyric is known;
- speaker/character is resolved;
- character reference chain is resolved;
- exact countable objects are specified;
- action is visually achievable;
- camera intent is specified;
- continuity with adjacent beat is defined;
- shot/generation boundaries are justified by visual logic;
- 16:9 composition is defined;
- any planned Short reuse is identified.

## Next Artifact

`EP-001_SHOT_SPECIFICATIONS_v001.md`

That document will turn each visual beat into production-ready Google Flow prompts, reference/Ingredients requirements, camera instructions, negative constraints, generation-unit IDs, and QC acceptance criteria.
