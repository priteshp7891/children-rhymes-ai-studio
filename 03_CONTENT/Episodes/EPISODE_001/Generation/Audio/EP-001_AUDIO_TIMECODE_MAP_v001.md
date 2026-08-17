# EP-001 — Audio Timecode Map v001

**Episode:** EP-001 — Count With Me!
**Audio master:** Candidate 03
**Runtime:** 128.440 seconds
**Authority:** Approved Candidate 03 audio + user-supplied approved lyrics
**Alignment source:** WhisperX large-v3 + wav2vec2 word alignment on Candidate 03
**Status:** ALIGNMENT-DERIVED / VISUAL PLANNING INPUT

## Important authority rule

This document does **not** promote Whisper's recognized text to lyric authority. The approved lyrics supplied by the user are authoritative. WhisperX timestamps are used only to locate the corresponding sung phrases in the actual recording.

The former 77-second / 14-scene plan is superseded for timing. It remains historical and is not a global scene-count rule.

## Audio landmarks

| ID | Start | End | Duration | Approved lyric / audio event | Speaker | Confidence |
|---|---:|---:|---:|---|---|---|
| A01 | 2.027 | 7.834 | 5.807 | Come along, come play with me, / There are numbers we can see. | Leo | High |
| A02 | 8.374 | 8.995 | 0.621 | Are you ready? | Maya | High |
| A03 | 9.375 | 9.776 | 0.401 | Yes! | Group | High |
| A04 | 11.718 | 13.260 | 1.542 | Then count with me! | Leo | High |
| A05 | 16.984 | 19.587 | 2.603 | One little sun shines in the sky, | Leo | High |
| A06 | 20.493 | 23.654 | 3.161 | Two fluffy clouds go floating by. | Leo | High |
| A07 | 24.114 | 28.195 | 4.081 | Three little birds sing in a tree— | Leo | High |
| A08 | 28.976 | 30.796 | 1.820 | One, two, three! | Group | High |
| A09 | 31.536 | 34.677 | 3.141 | Four butterflies flutter around, | Maya | High |
| A10 | 34.697 | 38.378 | 3.681 | Five bright flowers grow from the ground. | Maya | High |
| A11 | 38.498 | 39.399 | 0.901 | Four, five! | Group | High |
| A12 | 39.439 | 40.539 | 1.100 | Can you count them? | Maya | High |
| A13 | 40.939 | 43.000 | 2.061 | One, two, three, four, five! | Group | High |
| A14 | 46.338 | 52.983 | 6.645 | Six little frogs go hop, hop, hop, / Jumping up and they don't want to stop! | Benny | High |
| A15 | 53.584 | 60.509 | 6.925 | Seven little stars begin to shine, / Twinkling brightly, one by one in line. | Sunny | High |
| A16 | 60.529 | 61.530 | 1.001 | Six, seven! | Group | High |
| A17 | 61.710 | 68.935 | 7.225 | Eight little balloons rise up high, / Red, blue, yellow, floating in the sky! | Leo | Medium — 0.22s overlap with A16 is alignment drift |
| A18 | 69.556 | 69.776 | 0.220 | Eight! | Group | High |
| A19 | 71.997 | 75.419 | 3.422 | Nine little butterflies dance in the breeze, | Maya | High |
| A20 | 75.720 | 79.082 | 3.362 | Fluttering softly around the trees. | Maya | High |
| A21 | 79.382 | 80.883 | 1.501 | Ten little bells go— | Nora | High |
| A22 | 81.423 | 82.644 | 1.221 | Ring, ring, ring! | Group | High |
| A23 | 83.685 | 84.725 | 1.040 | Can you count them? | Nora | High |
| A24 | 85.266 | 90.849 | 5.583 | One, two, three, four, five, / Six, seven, eight, nine, ten! | Group | High for phrase; individual 9/10 recognition corrected from known lyrics |
| A25 | 90.909 | 92.110 | 1.201 | Let's count together! | Leo + Group | High |
| A26 | 92.710 | 98.174 | 5.464 | One, two, three, four, five, / Six, seven, eight, nine, ten! | Group | High for phrase; individual word alignment available |
| A27 | 98.374 | 99.775 | 1.401 | A little faster! | Leo | High |
| A28 | 100.055 | 105.579 | 5.524 | One, two, three, four, five, / Six, seven, eight, nine, ten! | Group | High for phrase; individual word alignment available |
| A29 | 106.079 | 106.679 | 0.600 | We did it! | Maya | High |
| A30 | 107.200 | 112.703 | 5.503 | Count with me, come count again, / We know our numbers one to ten! | Group | High |
| A31 | 113.044 | 114.424 | 1.380 | One, two, three— / Four, five, six— | Group | Medium — Whisper recognized some count words incorrectly |
| A32 | 116.906 | 120.749 | 3.843 | Seven, eight, nine— | Group | Medium — phrase reconstructed from approved lyrics and aligned count sequence |
| A33 | 121.029 | 122.430 | 1.401 | TEN! | Group | High at phrase level |
| A34 | 122.751 | 123.911 | 1.160 | You counted with me! | Leo | High |
| A35 | 124.532 | 125.813 | 1.281 | Let's do it again! | Group | High |
| A36 | 125.813 | 128.440 | 2.627 | Instrumental / musical tail after final lyric | — | High |

## Production interpretation

The audio naturally contains **36 meaningful audio landmarks**, not 14 fixed scenes. These landmarks are inputs to the visual beat map; multiple landmarks may be combined into one visual shot when continuity and motion support it, while a single landmark may require multiple Google Flow generations if the action cannot be generated reliably in one clip.

### Non-negotiable production rules derived from this map

1. Do not assume a universal scene duration.
2. Do not force future rhymes into 14 scenes.
3. Audio runtime is determined from the approved generated master.
4. Visual scene boundaries are derived from lyric/musical beats and continuity, not arbitrary fixed durations.
5. Whisper/WhisperX recognition errors must never overwrite approved lyrics.
6. Musical gaps and the 2.627-second ending tail are part of the timeline and must be intentionally planned.
7. The 16:9 master is planned first; Shorts are separately composed for 9:16 and are not simple crops.

## Validation notes

- Candidate 03 measured runtime: **128.440 seconds**.
- WhisperX alignment begins around **2.027 seconds**, confirming an instrumental/opening lead-in.
- Final recognized lyric ends around **125.813 seconds**.
- Remaining **2.627 seconds** should be treated as deliberate musical tail unless audio review proves otherwise.
- A16/A17 has a small alignment overlap; this is not evidence that the lyrics overlap. It is an alignment tolerance issue and should be resolved during visual beat construction.
- A31–A33 contain known Whisper recognition errors around the final count. The approved lyric sequence is retained as authority.

## Next artifact

`EP-001_VISUAL_BEAT_MAP_v001.md`

This next document will convert the audio landmarks into actual visual beats, character staging, continuity, camera intent, Google Flow generation units, and 16:9/9:16 reuse strategy.
