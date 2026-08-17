# Rhyme-Driven Production Standard v001

## Purpose

Every rhyme is a unique audiovisual source. The production system must derive the episode structure from the actual rhyme, its lyrics, audio timing, story beats, and visual requirements.

## Pipeline

`Rhyme → Audio/Lyrics Analysis → Story Beats → Visual Beats → Scene Plan → Generation Shot Plan → Character/Asset Resolution → Google Flow Briefs → Assembly → QC → 16:9 Master → 9:16 Shorts`

## Episode-derived values

The following values are calculated or explicitly approved per episode:

- runtime
- scene count
- scene boundaries
- scene duration
- generation-shot count
- generation-shot duration
- character participation
- visual quantity requirements
- transitions

No validator may assume that a future episode has the runtime or scene count of EP-001.

## Scene planning

A scene represents a narrative/visual beat. It must connect directly to the rhyme and have a clear beginning, action, and visual payoff.

Scene boundaries should follow lyric/music timing and visual storytelling. They must not be created merely to satisfy a fixed number of scenes.

## Generation-shot planning

A generation shot is the smallest practical unit sent to the selected video-generation model. One scene may contain multiple shots. Shot boundaries may be introduced for:

- model duration limits;
- camera changes;
- character continuity;
- staging changes;
- difficult object counts;
- transitions;
- editorial control.

A generation-shot boundary must not change the narrative timing of its parent scene. Assembly is responsible for exact editorial timing.

## Google Flow brief requirements

Each generation shot must specify:

1. parent episode and scene IDs;
2. shot ID;
3. canonical character Ingredients/references;
4. visual objective;
5. staging/action;
6. environment and continuity;
7. camera/framing/movement;
8. generation prompt;
9. negative constraints;
10. target source duration;
11. assembly trim/cut relationship;
12. required continuity from the preceding/following shot.

Generic prompts without these controls are incomplete production artifacts.

## Audio authority

The rhyme/audio timeline is authoritative for lyric order and timing. Visual planning must serve the audio rather than rewriting lyrics to fit a scene template.

## Master and Shorts

The master is planned for YouTube 16:9. Shorts are separate 9:16 editorial compositions using the same canonical universe and approved story moments. A Short must not be assumed to be a simple crop of the master.

## Episode locks

A lock is an explicit episode-level decision. It is validated only within that episode. EP-001 is locked at 77 seconds and 14 scenes. Future episodes are free to use different values.
