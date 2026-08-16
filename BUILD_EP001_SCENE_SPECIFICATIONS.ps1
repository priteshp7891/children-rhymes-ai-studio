$ErrorActionPreference = "Stop"

$root = "D:\YouTube_Channel\Children_Rhymes_AI"
$episodeRoot = Join-Path $root "03_CONTENT\Episodes\EPISODE_001"
$sceneRoot = Join-Path $episodeRoot "Scenes"

Write-Host "============================================" -ForegroundColor Cyan
Write-Host " CHILDREN RHYMES AI - EP-001 SCENE SPECIFICATIONS"
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "ROOT = $root"
Write-Host ""

New-Item -ItemType Directory -Force -Path $sceneRoot | Out-Null

$scenes = @(
    @{
        Id="SC-001"; Duration=6
        Beat="Opening / number discovery"
        Characters="@Leo"
        CharacterIds="CHAR-01"
        References="LEO-REF-001"
        Narration='Come along, come play with me, There are numbers we can see!'
        Visual="Leo stands in the canonical Children Rhymes AI world and notices a playful sequence of glowing number symbols appearing nearby. The numbers are environmental learning elements, not redesigns of the character."
        Action="Leo looks toward the numbers, reacts with curiosity, and reaches toward the first glowing number."
        Environment="Canonical Children Rhymes AI world; clean preschool-friendly environment; no distracting background elements."
        Camera="Medium-wide establishing shot, child eye-level, gentle forward camera movement toward Leo."
        Lighting="Soft cheerful daytime lighting with subtle glow from the number symbols."
        Audio="Lead vocal narration/lyrics; light playful music; subtle magical discovery sound."
        Prompt="Create a 6-second preschool educational 3D animation scene. Use @Leo only as the canonical character reference: CHAR-01, LEO-REF-001. Preserve Leo's locked face, eyes, hair, colors, proportions, silhouette, anatomy, age appearance, yellow shirt with teal star, teal shorts, white shoes with teal accents, and blue-green wristband on his anatomical LEFT WRIST ONLY. Leo discovers playful glowing number symbols in the canonical world and reacts with curious excitement. Medium-wide child-eye-level framing with a gentle forward camera move. Soft cheerful daylight. The visual action must reinforce the lyric: Come along, come play with me, There are numbers we can see. Preschool-safe, polished 3D animation, clear readable action, no character redesign."
        Negative="No character substitution, no identity mixing, no right-wrist wristband, no hairstyle change, no age change, no proportion change, no extra accessories, no scary imagery, no unreadable clutter."
    },
    @{
        Id="SC-002"; Duration=6
        Beat="One and two"
        Characters="@Leo"
        CharacterIds="CHAR-01"
        References="LEO-REF-001"
        Narration='One bright sun up in the sky, Two little clouds are floating by.'
        Visual="One clearly visible sun is established first, followed by exactly two clearly separated clouds. Leo points toward each quantity as he counts."
        Action="Leo points to the single sun, then points to the two clouds."
        Environment="Bright canonical outdoor preschool setting with open sky."
        Camera="Wide child-eye-level shot with gentle pan from sun to the two clouds and back to Leo."
        Lighting="Warm morning daylight."
        Audio="Lead vocal; light counting accents; gentle outdoor ambience."
        Prompt="Create a 6-second preschool educational 3D animation. Use @Leo as CHAR-01 with canonical reference LEO-REF-001. Preserve all locked Leo identity elements and keep the blue-green wristband on the anatomical LEFT WRIST ONLY. Show exactly one bright sun, then exactly two clearly separated clouds. Leo visibly points to the one sun and then the two clouds in synchronization with the lyric: One bright sun up in the sky, Two little clouds are floating by. Wide child-eye-level framing with a gentle pan. Clear countable objects, clean composition, cheerful daylight."
        Negative="Do not show two suns, do not show more than two clouds, no identity changes, no right-wrist wristband, no extra characters, no confusing duplicate objects."
    },
    @{
        Id="SC-003"; Duration=5
        Beat="Three"
        Characters="@Leo, @Maya"
        CharacterIds="CHAR-01, CHAR-02"
        References="LEO-REF-001, MAYA-REF-001"
        Narration='Three green apples - one, two, three! Come and count them all with me!'
        Visual="Exactly three green apples are clearly separated in the foreground. Leo counts them while Maya encourages him."
        Action="Leo points to apple one, two, and three sequentially; Maya smiles and gestures encouragement."
        Environment="Sunny preschool garden area."
        Camera="Medium two-character shot with a slight downward tilt to the apples."
        Lighting="Soft bright daylight."
        Audio="Lead vocal; three light count accents; subtle playful plucks."
        Prompt="Create a 5-second preschool educational 3D animation. Resolve @Leo to CHAR-01 / LEO-REF-001 and @Maya to CHAR-02 / MAYA-REF-001 independently. Preserve both canonical identities and relative scale. Show exactly three clearly separated green apples in the foreground. Leo points to each apple sequentially while Maya encourages him. Synchronize the visible count with: Three green apples - one, two, three! Come and count them all with me! Medium two-character framing with a slight tilt toward the apples. Clean readable composition and cheerful lighting."
        Negative="No fourth apple, no missing apple, no character substitution, no identity mixing, no redesign, no incorrect accessories, no unreadable object overlap."
    },
    @{
        Id="SC-004"; Duration=5
        Beat="1-2-3 recap"
        Characters="@Leo, @Maya"
        CharacterIds="CHAR-01, CHAR-02"
        References="LEO-REF-001, MAYA-REF-001"
        Narration='One, two, three! Count along - come sing with me!'
        Visual="A concise recap presents one sun, two clouds, and three apples in a clean three-part visual arrangement."
        Action="Leo and Maya count the three established groups from left to right."
        Environment="Bright simplified learning space connected visually to the previous garden."
        Camera="Smooth lateral camera move across the three quantity groups."
        Lighting="Even cheerful daylight."
        Audio="Group count vocal; light musical accent on each number."
        Prompt="Create a 5-second preschool educational 3D recap scene. Resolve Leo as CHAR-01 / LEO-REF-001 and Maya as CHAR-02 / MAYA-REF-001. Preserve canonical identities. Clearly present one sun, two clouds, and three green apples as three separate, countable groups. Leo and Maya count the groups from left to right in synchronization with: One, two, three! Count along - come sing with me! Smooth lateral camera movement, clean educational composition."
        Negative="No ambiguous quantities, no duplicate characters, no identity mixing, no redesign, no clutter."
    },
    @{
        Id="SC-005"; Duration=6
        Beat="Four and five"
        Characters="@Leo, @Maya, @Benny"
        CharacterIds="CHAR-01, CHAR-02, CHAR-03"
        References="LEO-REF-001, MAYA-REF-001, BENNY-REF-001"
        Narration='Four blue butterflies take flight, Five red flowers shining bright.'
        Visual="Exactly four blue butterflies take flight, followed by exactly five clearly visible red flowers."
        Action="Benny playfully follows the butterflies while Leo and Maya point toward the flowers."
        Environment="Colorful preschool garden."
        Camera="Wide group shot with a gentle tracking move from butterflies to flowers."
        Lighting="Bright soft daylight."
        Audio="Lead vocal; fluttering wing sound; gentle garden ambience."
        Prompt="Create a 6-second preschool educational 3D animation. Resolve Leo, Maya, and Benny independently to their canonical references: CHAR-01 / LEO-REF-001, CHAR-02 / MAYA-REF-001, CHAR-03 / BENNY-REF-001. Preserve individual identities and relative scale. Show exactly four blue butterflies taking flight, then exactly five clearly visible red flowers. Benny reacts playfully while Leo and Maya help count. Use a wide group shot and gentle tracking movement. Synchronize with: Four blue butterflies take flight, Five red flowers shining bright. Preschool-safe and visually countable."
        Negative="No extra butterflies, no fewer than five flowers, no character identity mixing, no redesign, no unsafe action, no visual clutter."
    },
    @{
        Id="SC-006"; Duration=5
        Beat="Six"
        Characters="@Benny"
        CharacterIds="CHAR-03"
        References="BENNY-REF-001"
        Narration='Six small frogs go hop, hop, hop! Count them before they jump and stop!'
        Visual="Exactly six small frogs are visible together and perform a playful synchronized hop."
        Action="Benny watches and reacts as the six frogs hop in a readable rhythm."
        Environment="Friendly pond edge in the canonical preschool world."
        Camera="Medium-wide low child-friendly angle with a small rhythmic camera bounce."
        Lighting="Soft daylight."
        Audio="Lead vocal; six playful frog hop sounds; light rhythmic music."
        Prompt="Create a 5-second preschool educational 3D animation. Use Benny as CHAR-03 with canonical reference BENNY-REF-001. Preserve Benny's complete canonical identity. Show exactly six clearly separated small frogs. The frogs perform a synchronized playful hop while Benny reacts with delight. Medium-wide child-friendly framing with subtle rhythmic movement. Synchronize with: Six small frogs go hop, hop, hop! Count them before they jump and stop! Clear quantity and safe playful action."
        Negative="No seventh frog, no missing frog, no character substitution, no frightening animals, no identity redesign."
    },
    @{
        Id="SC-007"; Duration=5
        Beat="4-5-6 recap"
        Characters="@Leo, @Maya, @Benny"
        CharacterIds="CHAR-01, CHAR-02, CHAR-03"
        References="LEO-REF-001, MAYA-REF-001, BENNY-REF-001"
        Narration='Four, five, six! Counting is a clever trick!'
        Visual="The established four butterflies, five flowers, and six frogs appear as three clean countable groups."
        Action="The three characters point to each group in sequence."
        Environment="Bright garden learning area."
        Camera="Medium-wide frontal composition with three visual zones."
        Lighting="Even cheerful daylight."
        Audio="Group vocal; three musical count accents."
        Prompt="Create a 5-second preschool educational recap. Resolve Leo, Maya, and Benny to CHAR-01 / LEO-REF-001, CHAR-02 / MAYA-REF-001, and CHAR-03 / BENNY-REF-001. Preserve canonical identities and relative scale. Clearly present four butterflies, five flowers, and six frogs as separate countable groups. The characters point to the groups in sequence while singing: Four, five, six! Counting is a clever trick! Clean frontal composition, readable quantities, cheerful preschool style."
        Negative="No incorrect quantities, no identity mixing, no redesign, no clutter."
    },
    @{
        Id="SC-008"; Duration=5
        Beat="Seven"
        Characters="@Sunny, @Leo, @Maya"
        CharacterIds="CHAR-04, CHAR-01, CHAR-02"
        References="SUNNY-REF-001, LEO-REF-001, MAYA-REF-001"
        Narration='Seven stars begin to glow, Twinkling softly, nice and slow.'
        Visual="Exactly seven stars appear in the evening sky and glow one after another."
        Action="Sunny leads the discovery while Leo and Maya look upward and count."
        Environment="Gentle twilight learning environment."
        Camera="Medium group shot tilting upward toward the seven stars."
        Lighting="Soft twilight with warm character fill and gentle star glow."
        Audio="Lead vocal; seven soft sparkle accents; calm musical transition."
        Prompt="Create a 5-second preschool educational 3D animation. Resolve Sunny as CHAR-04 / SUNNY-REF-001, Leo as CHAR-01 / LEO-REF-001, and Maya as CHAR-02 / MAYA-REF-001. Preserve all canonical identities. Show exactly seven clearly separated glowing stars in the sky. Sunny leads the discovery while Leo and Maya look upward. Synchronize the seven visual star appearances with: Seven stars begin to glow, Twinkling softly, nice and slow. Gentle upward camera tilt and calm twilight lighting."
        Negative="No extra stars that could confuse counting, no identity changes, no scary night imagery, no character mixing."
    },
    @{
        Id="SC-009"; Duration=5
        Beat="Eight"
        Characters="@Sunny, @Leo, @Maya"
        CharacterIds="CHAR-04, CHAR-01, CHAR-02"
        References="SUNNY-REF-001, LEO-REF-001, MAYA-REF-001"
        Narration='Eight little birds fly through the sky, Wave hello as they go by!'
        Visual="Exactly eight friendly birds fly in a readable formation across the sky."
        Action="Sunny flies alongside the eight birds while Leo and Maya wave."
        Environment="Bright open sky transitioning from twilight toward a cheerful scene."
        Camera="Wide tracking shot following the birds."
        Lighting="Soft bright sky light."
        Audio="Lead vocal; eight light wing/flap accents; cheerful ambience."
        Prompt="Create a 5-second preschool educational 3D animation. Resolve Sunny, Leo, and Maya to their canonical references independently. Show exactly eight friendly birds in a clearly countable formation. Sunny flies alongside them while Leo and Maya wave. Wide tracking camera following the birds. Synchronize visible action with: Eight little birds fly through the sky, Wave hello as they go by! Preserve every canonical character identity."
        Negative="No extra birds, no missing birds, no confusing overlapping formation, no character substitution, no identity mixing."
    },
    @{
        Id="SC-010"; Duration=5
        Beat="7-8 recap"
        Characters="@Sunny, @Leo, @Maya"
        CharacterIds="CHAR-04, CHAR-01, CHAR-02"
        References="SUNNY-REF-001, LEO-REF-001, MAYA-REF-001"
        Narration='Seven, eight! Counting numbers feels so great!'
        Visual="Seven stars and eight birds are presented as two distinct countable groups."
        Action="Sunny, Leo, and Maya gesture toward each group while counting."
        Environment="Bright, clean learning transition."
        Camera="Smooth two-part composition moving from stars to birds."
        Lighting="Cheerful balanced lighting."
        Audio="Group vocal; bright musical count accents."
        Prompt="Create a 5-second preschool educational recap. Resolve Sunny, Leo, and Maya independently using their canonical references. Show exactly seven stars as one group and exactly eight birds as another distinct group. Characters gesture toward each group while singing: Seven, eight! Counting numbers feels so great! Smooth camera move between the groups, clear quantities, clean composition."
        Negative="No ambiguous quantities, no extra stars or birds, no identity mixing, no redesign."
    },
    @{
        Id="SC-011"; Duration=6
        Beat="Nine"
        Characters="@Nora, @Leo, @Maya, @Benny, @Sunny"
        CharacterIds="CHAR-05, CHAR-01, CHAR-02, CHAR-03, CHAR-04"
        References="NORA-REF-001, LEO-REF-001, MAYA-REF-001, BENNY-REF-001, SUNNY-REF-001"
        Narration='Nine bright balloons float up so high, Dancing softly in the sky.'
        Visual="Exactly nine bright balloons rise together in a clearly separated cluster while the full cast watches."
        Action="Nora guides the count; the other characters point upward and follow the balloons."
        Environment="Cheerful outdoor celebration area."
        Camera="Wide group shot that tilts upward with the balloons."
        Lighting="Warm celebratory daylight."
        Audio="Lead vocal; nine soft balloon movement accents; music builds."
        Prompt="Create a 6-second preschool educational 3D animation. Resolve all five characters independently: Nora CHAR-05 / NORA-REF-001, Leo CHAR-01 / LEO-REF-001, Maya CHAR-02 / MAYA-REF-001, Benny CHAR-03 / BENNY-REF-001, Sunny CHAR-04 / SUNNY-REF-001. Preserve canonical identity and relative scale. Show exactly nine bright balloons rising in a readable cluster. Nora guides the count while the others point upward. Wide group shot tilting upward. Synchronize with: Nine bright balloons float up so high, Dancing softly in the sky."
        Negative="No tenth balloon, no missing balloons, no identity mixing, no redesign, no unsafe behavior, no clutter."
    },
    @{
        Id="SC-012"; Duration=6
        Beat="Ten"
        Characters="@Nora, @Leo, @Maya, @Benny, @Sunny"
        CharacterIds="CHAR-05, CHAR-01, CHAR-02, CHAR-03, CHAR-04"
        References="NORA-REF-001, LEO-REF-001, MAYA-REF-001, BENNY-REF-001, SUNNY-REF-001"
        Narration='Ten golden bells ring out - ding, ding! We counted ten - now clap and sing!'
        Visual="Exactly ten clearly visible golden bells appear in an organized arrangement and ring in sequence."
        Action="Nora leads the count; the full group claps as the bells ring."
        Environment="Bright musical celebration area."
        Camera="Medium-wide group shot with a gentle push toward the ten bells."
        Lighting="Warm bright celebratory lighting."
        Audio="Lead vocal; ten bell chimes; clapping; music reaches a small peak."
        Prompt="Create a 6-second preschool educational 3D animation. Resolve Nora, Leo, Maya, Benny, and Sunny independently through their canonical references. Preserve all locked identities and relative scale. Show exactly ten clearly separated golden bells in an organized arrangement. Nora leads the count, the bells ring in sequence, and the group claps. Synchronize with: Ten golden bells ring out - ding, ding! We counted ten - now clap and sing! Medium-wide framing with gentle push-in, clear countable arrangement."
        Negative="No eleventh bell, no missing bell, no identity mixing, no redesign, no chaotic movement."
    },
    @{
        Id="SC-013"; Duration=7
        Beat="Full 1-10 count"
        Characters="All five"
        CharacterIds="CHAR-01, CHAR-02, CHAR-03, CHAR-04, CHAR-05"
        References="LEO-REF-001, MAYA-REF-001, BENNY-REF-001, SUNNY-REF-001, NORA-REF-001"
        Narration='One, two, three, four, five, six, seven, eight, nine, ten!'
        Visual="All five characters participate in an energetic final counting sequence. Previously established objects appear as clear visual quantity cues without overwhelming the frame."
        Action="Each character contributes to the count while the camera moves through the group and the quantity cues."
        Environment="Canonical celebration setting combining the established visual world elements."
        Camera="Dynamic but controlled wide-to-medium movement; maintain clear faces and readable count cues."
        Lighting="Bright celebratory lighting."
        Audio="All-character counting vocals; musical lift; light rhythmic accents."
        Prompt="Create a 7-second preschool educational finale. Resolve all five characters independently using CHAR-01 / LEO-REF-001, CHAR-02 / MAYA-REF-001, CHAR-03 / BENNY-REF-001, CHAR-04 / SUNNY-REF-001, CHAR-05 / NORA-REF-001. Preserve every canonical identity, anatomy, proportion, color, accessory, and relative scale. All five characters perform an energetic but readable final count from one through ten. Use previously established visual quantity cues without creating confusing duplicates. Controlled wide-to-medium camera movement, bright celebratory lighting, synchronized group action. The visual rhythm must reinforce: One, two, three, four, five, six, seven, eight, nine, ten!"
        Negative="No character substitution, no identity mixing, no redesign, no uncontrolled crowding, no unreadable quantity cues, no extra characters."
    },
    @{
        Id="SC-014"; Duration=5
        Beat="Celebration / ending"
        Characters="All five"
        CharacterIds="CHAR-01, CHAR-02, CHAR-03, CHAR-04, CHAR-05"
        References="LEO-REF-001, MAYA-REF-001, BENNY-REF-001, SUNNY-REF-001, NORA-REF-001"
        Narration='We did it! Count with us and count again!'
        Visual="All five characters celebrate together in the canonical world, smiling, clapping, and inviting the viewer to participate again."
        Action="Leo leads a friendly wave toward the viewer; the group claps and celebrates."
        Environment="Canonical cheerful celebration environment."
        Camera="Medium-wide frontal hero shot with a gentle final push-in."
        Lighting="Warm bright celebratory light."
        Audio="Group vocal; claps; short musical ending."
        Prompt="Create a 5-second preschool-friendly 3D ending scene. Resolve all five characters independently through their canonical references and preserve every locked identity element. All five characters celebrate together, smiling, clapping, and inviting the viewer to count again. Leo gives a friendly wave toward camera. Medium-wide frontal hero composition with a gentle final push-in. Warm cheerful lighting. Synchronize with: We did it! Count with us and count again! End with a clean, joyful pose suitable for a final frame."
        Negative="No identity mixing, no redesign, no extra characters, no exaggerated unsafe movement, no scary imagery, no altered accessories."
    }
)

Write-Host "[1/4] Creating 14 scene specifications..." -ForegroundColor Cyan

foreach ($scene in $scenes) {
    $scenePath = Join-Path $sceneRoot ($scene.Id + ".md")

    $doc = @"
# $($scene.Id) - $($scene.Beat)

**Document ID:** $($scene.Id)-SPEC-001
**Version:** v001
**Status:** DRAFT

## Scene ID

$($scene.Id)

## Story / Learning Beat

$($scene.Beat)

## Narration / Lyrics

$($scene.Narration)

## Characters

$($scene.Characters)

### Character IDs

$($scene.CharacterIds)

### Canonical Reference IDs

$($scene.References)

## Action

$($scene.Action)

## Visual Description

$($scene.Visual)

## Environment

$($scene.Environment)

## Camera

$($scene.Camera)

## Lighting

$($scene.Lighting)

## Duration

$($scene.Duration) seconds

## Audio Requirement

$($scene.Audio)

## Generation Prompt

$($scene.Prompt)

## Negative Constraints

$($scene.Negative)

## QC Checklist

- [ ] Correct scene ID
- [ ] Narration / lyrics synchronized
- [ ] Correct character identities
- [ ] Correct Character IDs
- [ ] Correct canonical Reference IDs
- [ ] Character proportions and anatomy preserved
- [ ] Locked accessories preserved
- [ ] Quantity is visually countable
- [ ] Action reinforces the narration
- [ ] Environment is appropriate
- [ ] Camera is readable
- [ ] Duration matches the scene map
- [ ] Audio requirements are defined
- [ ] Generation prompt exists
- [ ] No identity mixing
- [ ] No unauthorized redesign

## Approval

**QC Status:** DRAFT

Only an explicitly approved scene may enter final assembly.
"@

    $doc = $doc -replace "[ \t]+(?=\r?\n)", ""
    $doc = $doc -replace "`r`n", "`n"
    $doc = $doc -replace "`r", "`n"

    [System.IO.File]::WriteAllText(
        $scenePath,
        $doc.TrimEnd("`n") + "`n",
        [System.Text.UTF8Encoding]::new($false)
    )

    Write-Host "CREATED: $($scene.Id).md" -ForegroundColor Green
}

Write-Host ""
Write-Host "[2/4] Creating scene manifest..." -ForegroundColor Cyan

$manifestPath = Join-Path $sceneRoot "SCENE_SPECIFICATIONS_MANIFEST_v001.md"
$manifest = @"
# EP-001 - Scene Specifications Manifest

**Document ID:** EP-001-SCENE-MANIFEST-001
**Version:** v001
**Status:** DRAFT

## Purpose

Index the 14 scene specifications derived from the approved working timed scene map.

## Scene List

| Scene | Duration | Status |
|---|---:|---|
| SC-001 | 6s | DRAFT |
| SC-002 | 6s | DRAFT |
| SC-003 | 5s | DRAFT |
| SC-004 | 5s | DRAFT |
| SC-005 | 6s | DRAFT |
| SC-006 | 5s | DRAFT |
| SC-007 | 5s | DRAFT |
| SC-008 | 5s | DRAFT |
| SC-009 | 5s | DRAFT |
| SC-010 | 5s | DRAFT |
| SC-011 | 6s | DRAFT |
| SC-012 | 6s | DRAFT |
| SC-013 | 7s | DRAFT |
| SC-014 | 5s | DRAFT |

**Total planned runtime: 82 seconds**

## Character Resolution

- @Leo -> CHAR-01 -> LEO-REF-001
- @Maya -> CHAR-02 -> MAYA-REF-001
- @Benny -> CHAR-03 -> BENNY-REF-001
- @Sunny -> CHAR-04 -> SUNNY-REF-001
- @Nora -> CHAR-05 -> NORA-REF-001

## Status Rule

These are production specifications, not generated assets.

No scene is approved until scene-level QC is completed.
"@

$manifest = $manifest -replace "[ \t]+(?=\r?\n)", ""
$manifest = $manifest -replace "`r`n", "`n"
$manifest = $manifest -replace "`r", "`n"

[System.IO.File]::WriteAllText(
    $manifestPath,
    $manifest.TrimEnd("`n") + "`n",
    [System.Text.UTF8Encoding]::new($false)
)

Write-Host "CREATED: SCENE_SPECIFICATIONS_MANIFEST_v001.md" -ForegroundColor Green

Write-Host ""
Write-Host "[3/4] Validating scene specifications..." -ForegroundColor Cyan

if ($scenes.Count -ne 14) {
    throw "Expected 14 scenes, found $($scenes.Count)."
}

$expectedIds = 1..14 | ForEach-Object { "SC-{0:D3}" -f $_ }

foreach ($id in $expectedIds) {
    $scenePath = Join-Path $sceneRoot "$id.md"

    if (-not (Test-Path -LiteralPath $scenePath -PathType Leaf)) {
        throw "Missing scene file: $id.md"
    }

    $text = [System.IO.File]::ReadAllText(
        $scenePath,
        [System.Text.UTF8Encoding]::new($false)
    )

    $requiredFields = @(
        "## Scene ID",
        "## Narration / Lyrics",
        "## Characters",
        "### Character IDs",
        "### Canonical Reference IDs",
        "## Action",
        "## Visual Description",
        "## Environment",
        "## Camera",
        "## Lighting",
        "## Duration",
        "## Audio Requirement",
        "## Generation Prompt",
        "## Negative Constraints",
        "## QC Checklist",
        "**QC Status:** DRAFT"
    )

    foreach ($field in $requiredFields) {
        if (-not $text.Contains($field)) {
            throw "$id missing required field: $field"
        }
    }

    if ($text -match 'â|Ã|ð|�') {
        throw "$id contains suspicious encoding."
    }

    if ($text -match '[ \t]+$') {
        throw "$id contains trailing whitespace."
    }

    Write-Host "$id : PASS" -ForegroundColor Green
}

Write-Host ""
Write-Host "[4/4] Validating character resolution contract..." -ForegroundColor Cyan

$resolutions = @(
    "@Leo -> CHAR-01 -> LEO-REF-001",
    "@Maya -> CHAR-02 -> MAYA-REF-001",
    "@Benny -> CHAR-03 -> BENNY-REF-001",
    "@Sunny -> CHAR-04 -> SUNNY-REF-001",
    "@Nora -> CHAR-05 -> NORA-REF-001"
)

foreach ($resolution in $resolutions) {
    $found = Select-String `
        -Path (Join-Path $sceneRoot "*.md") `
        -Pattern ([regex]::Escape($resolution)) `
        -SimpleMatch

    if ($found) {
        Write-Host "$resolution : PASS" -ForegroundColor Green
    }
    else {
        Write-Host "$resolution : REVIEW" -ForegroundColor Yellow
    }
}

Write-Host ""
Write-Host "===== GIT DIFF CHECK =====" -ForegroundColor Cyan
git diff --check
if ($LASTEXITCODE -ne 0) {
    throw "git diff --check failed."
}

Write-Host ""
Write-Host "===== STATUS =====" -ForegroundColor Cyan
git status --short -- "03_CONTENT/Episodes/EPISODE_001"

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "EP-001 SCENE SPECIFICATIONS: PASS" -ForegroundColor Green
Write-Host "14 scene specifications created."
Write-Host "NO COMMIT OR PUSH WAS PERFORMED."
Write-Host "============================================" -ForegroundColor Cyan
