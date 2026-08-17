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

The audio determines the timing. The visual plan determines how that timing is expressed through beats, shots, staging, camera movement, continuity, and generation units.

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

The canonical cast and resolution chain are locked in the Character Universe. fileciteturn127file0L2-L10

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

| Beat | Audio | Duration | Characters | Visual story / action | Camera / framing | Generation strategy |
|---|---|---:|---|---|---|---|
| VB-01 | A01 2.027–7.834 | 5.807 | Leo | Leo welcomes the viewer and starts walking/playing into the learning world. Numbers are introduced as playful floating symbols or environmental learning cues. | Wide-to-medium child-height tracking shot. | One primary Flow generation; establish master world. |
| VB-02 | A02–A03 8.374–9.776 | 1.402 | Maya + Group | Maya turns toward camera with an inviting question; group responds enthusiastically. | Medium two-shot / quick reaction cut. | Short generation unit; prioritize facial reaction and lip-sync readability. |
| VB-03 | A04 11.718–13.260 | 1.542 | Leo | Leo gestures toward the first counting discovery and invites everyone to begin. | Medium push-in. | Short generation unit. |
| VB-04 | A05 16.984–19.587 | 2.603 | Leo | A single bright sun appears clearly in the sky. Leo looks up and points. | Tilt/pan from Leo to sun; finish on readable sun. | One generation unit. |
| VB-05 | A06 20.493–23.654 | 3.161 | Leo | Two fluffy clouds drift into view, visibly separated. | Wide sky composition with gentle lateral camera movement. | One generation unit. |
| VB-06 | A07–A08 24.114–30.796 | 6.682 | Leo + Group | Three birds appear in a tree; Leo reacts, then group counts exactly three. Each bird should be readable. | Medium tree shot → slight push-in → count-focused framing. | One longer generation unit or two connected units if object continuity is unreliable. |
| VB-07 | A09–A11 31.536–39.399 | 7.863 | Maya + Group | Four butterflies flutter around Maya; five bright flowers are revealed on the ground. Group emphasizes four then five. | Medium follow on butterflies → tilt down to flowers → close counting view. | Two connected generation units recommended: butterflies / flowers. |
| VB-08 | A12–A13 39.439–43.000 | 3.561 | Maya + Group | Maya asks the counting question. Group counts five visible flowers clearly. | Medium Maya → close/medium group and flowers. | One generation unit if Flow maintains five objects; otherwise split question and count. |
| VB-09 | A14 46.338–52.983 | 6.645 | Benny | Benny discovers six frogs. Frogs hop rhythmically while Benny reacts playfully. The six frogs remain countable. | Low child-height / playful lateral tracking; brief close-up on hopping feet. | Two connected units if needed: discovery / hopping. |
| VB-10 | A15 53.584–60.509 | 6.925 | Sunny | Sunny looks upward as seven little stars appear one by one and twinkle in a line. | Upward tilt from Sunny to sky; gentle arc around Sunny. | One generation unit with controlled star appearance. |
| VB-11 | A16 60.529–61.530 | 1.001 | Group | Group points/reaches toward the six frogs and seven stars as they say six, seven. | Quick wide reaction shot. | Transition/reaction unit; can be generated as short pickup. |
| VB-12 | A17–A18 61.710–69.776 | 8.066 | Leo + Group | Eight balloons rise high. Colors red, blue, yellow are clearly distinguishable. Leo guides attention upward; group lands on eight. | Upward crane/tilt following balloons; maintain all eight visible near count moment. | Two connected units recommended: rise / color-and-eight payoff. |
| VB-13 | A19–A20 71.997–79.082 | 7.085 | Maya | Nine butterflies dance gently around trees and Maya. Motion should be soft and graceful, not chaotic. | Medium tracking around Maya and butterflies; shallow push-in. | One generation unit or two if butterfly consistency is unstable. |
| VB-14 | A21–A22 79.382–82.644 | 3.262 | Nora + Group | Nora presents ten little bells; group creates a clear ring-ring-ring musical visual moment. | Medium Nora → close-up bells → group reaction. | Two short connected units recommended. |
| VB-15 | A23–A24 83.685–90.849 | 7.164 | Nora + Group | Nora asks viewers to count. Ten countable objects remain in a clear arrangement while Group counts one through ten. | Stable wide/medium composition designed for counting; minimal camera movement. | One generation unit if object continuity is reliable; otherwise split question/count. |
| VB-16 | A25 90.909–92.110 | 1.201 | Leo + Group | Leo and Group invite everyone to count together. | Medium group shot with direct-to-camera energy. | Short pickup. |
| VB-17 | A26 92.710–98.174 | 5.464 | Group | Group counts one through ten together. Visual counters can illuminate or highlight sequentially without changing the environment. | Mostly locked medium/wide; subtle rhythmic push. | One generation unit; avoid complex object transformations. |
| VB-18 | A27 98.374–99.775 | 1.401 | Leo | Leo signals the faster challenge with playful confidence. | Close/medium Leo reaction. | Short pickup. |
| VB-19 | A28 100.055–105.579 | 5.524 | Group | Faster one-to-ten count. Use rhythmic visual highlights that accelerate while remaining readable. | Slightly faster controlled camera rhythm; no chaotic movement. | One generation unit plus edit-controlled pacing if needed. |
| VB-20 | A29 106.079–106.679 | 0.600 | Maya | Maya celebrates: We did it! | Close-up celebration reaction. | Very short pickup; can be a reaction cut. |
| VB-21 | A30 107.200–112.703 | 5.503 | Group | Group returns to the central world and invites viewers to count again. Characters gather together. | Wide ensemble shot → gentle push toward group. | One generation unit. |
| VB-22 | A31–A32 113.044–120.749 | 7.705 | Group | Finale count builds: one-two-three, four-five-six, seven-eight-nine. Visual counting elements appear in three rhythmic groups. | Three-stage camera progression or object grouping; keep count visually obvious. | Two connected units recommended: first six / seven-nine. |
| VB-23 | A33 121.029–122.430 | 1.401 | Group | TEN! Big joyful visual payoff. All characters can react together while the number ten is visually dominant. | Hero wide shot with controlled push-in toward “10” visual. | Dedicated payoff generation unit. |
| VB-24 | A34 122.751–123.911 | 1.160 | Leo | Leo directly acknowledges the viewer: You counted with me! | Medium close-up, warm eye contact. | Short pickup. |
| VB-25 | A35 124.532–125.813 | 1.281 | Group | Group invites another round with cheerful gesture toward camera. | Medium/wide ensemble. | Short pickup. |
| VB-26 | A36 125.813–128.440 | 2.627 | Group / all cast | Instrumental tail. Hold a satisfying final tableau; characters remain alive with subtle idle motion rather than ending abruptly. | Wide hero composition; extremely slow push or gentle breathing motion. | One end-card/tableau generation unit. |

## Generation Unit Rules

The visual beats above are storytelling/editorial units. Google Flow generations should be broken further whenever a single generation cannot reliably maintain character identity, object count, motion continuity, or readable staging.

### Preferred generation unit size

Use the shortest generation that can complete the intended continuous action cleanly. Approximately 4–8 seconds is a planning target, not a universal platform limit.

### Split a beat when

- more than one major action must occur;
- a character changes position substantially;
- counting objects appear sequentially;
- the camera must change from wide to close-up;
- character/object continuity becomes unreliable;
- a lyric phrase requires a distinct visual payoff;
- a short reaction shot can be edited more cleanly than generated in one clip.

### Do not split merely because

- a new lyric line starts;
- the timestamp crosses an arbitrary duration threshold;
- a number changes from one to another if the visual action remains continuous.

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
- generation unit boundary is defined;
- 16:9 composition is defined;
- any planned Short reuse is identified.

## Next Artifact

`EP-001_SHOT_SPECIFICATIONS_v001.md`

That document will turn each visual beat into production-ready Google Flow prompts, reference/Ingredients requirements, camera instructions, negative constraints, generation-unit IDs, and QC acceptance criteria.
