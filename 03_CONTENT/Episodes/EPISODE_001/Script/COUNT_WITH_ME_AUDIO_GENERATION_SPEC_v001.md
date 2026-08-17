# EP-001 — Count With Me! — Audio Generation Specification v001

**Status:** READY FOR AUDIO GENERATION
**Timing authority:** Final approved audio file
**Runtime target:** NONE

## Objective
Create the authoritative song audio for EP-001 from the approved lyrics. Do not target 77 seconds. Do not pad, compress, repeat, or remove lyric content to hit a predetermined duration.

## Musical direction
- Preschool educational counting song.
- Bright, playful, warm, energetic, and easy for children to sing along with.
- Clear diction and very clear number pronunciation from one through ten.
- Simple melodic phrases with strong repetition and call-and-response moments.
- Child-friendly lead vocal with a small children's-group response.
- Avoid overly fast delivery; every number must remain intelligible.
- Use light percussion, hand claps, marimba/xylophone-style melodic colors, soft bass, and playful bells.
- Keep the arrangement uncluttered so lyrics remain dominant.
- Short instrumental transitions may occur naturally between lyrical sections.
- Ending should feel complete and inviting, with a clear final musical resolution.

## Vocal direction
- Warm, expressive preschool-friendly lead singer.
- Natural pronunciation; numbers must not be swallowed or rushed.
- Lead: Leo/Maya-style character energy without impersonating a specific real person.
- Group responses should sound like a small cheerful children's chorus.
- Use emphasis on the counted numbers.
- Leave tiny natural spaces after counting prompts so children can participate.

## Arrangement structure
1. Intro: invitation to count.
2. Numbers 1–3.
3. Numbers 4–5 with call-and-response.
4. Numbers 6–7.
5. Number 8.
6. Numbers 9–10 with call-and-response.
7. Full 1–10 counting chorus.
8. Faster/repeatable 1–10 count.
9. Celebration and invitation to count again.

## Lyric source
Use exactly:
`03_CONTENT/Episodes/EPISODE_001/Script/COUNT_WITH_ME_LYRICS_v002.md`

Do not invent alternate lyrics during audio generation.

## Timing policy
The generator may produce any natural duration. After generation, measure the final audio precisely and store:
- duration in seconds;
- sample rate;
- channel count;
- final audio file hash;
- generation tool/model;
- generation settings;
- approved/rejected status.

Only the approved audio duration becomes the EP-001 runtime authority.

## Audio acceptance gates
- Every lyric is present and intelligible.
- Numbers 1–10 are unmistakable.
- No clipped words or accidental lyric substitutions.
- No unwanted vocal artifacts.
- Music does not mask the counting words.
- Beginning and ending are musically clean.
- No arbitrary silence has been added to hit a target duration.
- Final file can be used as the timing master for visual planning.

## Required output
Preferred master: lossless WAV, 48 kHz, 24-bit, stereo.

Also create a listening copy such as MP3/AAC if required by the generation/editing tool.

## After generation
Do not build or re-time scenes until the audio has passed the acceptance gates. The next production artifact is the audio timecode map derived from the approved waveform.
