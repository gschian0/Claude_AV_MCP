# Digital Symphony: recipe book

The Max instruments in `patches/max/` are generated, not hand-patched. Each one
is a Python recipe in `recipes/max/` that writes the `.maxpat` JSON. To change an
instrument, edit its recipe and rebuild:

```bash
python3 recipes/max/build_all.py        # rewrites every patch in patches/max/
```

Close the patches in Max before rebuilding, then reopen them. If you edit a
patch by hand in Max, the next rebuild overwrites it, so copy the change back
into the recipe.

## The conductor: `conductor.maxpat`
**Recipe:** `recipes/max/conductor.py` · **Asked for:** "the bassline needs to be more in key … i would like one patch to control them all"

It sits at the top of the symphony window and runs everything through sends:
- **KEY:** note buttons (A, B♭, B, C, D, E, F, G) or a MIDI number → `av_root`. The bassline's own root box does the same, and each one shows the other's changes.
- **SCALE** → `av_scale`. Both basslines pass every note through `av_quantize.js`, which snaps it to the nearest note in the scale. So presets, hand-drawn sliders and old patterns all stay in key without re-rolling.
- **NEW LINES:** re-roll the acid or jungle line in the current scale (`av_reroll_bass` / `av_reroll_jungle`).
- **MIX:** a fader each for drums, tampura, acid, jungle and bells (`av_level_*`). A fader takes over that instrument's level once you move it.
- **Drone evolve** (`av_evolve`) and **audio on/off**. Audio switches on by itself 1.5 s after the conductor loads ("this should just play").
- **DRUMS** ("there should be a patch that controls everything"): every pattern by name (`av_drum_pattern`), auto patterns, auto sweeps, sweep now, and chaos.
- **VISUALS:** render, fullscreen, cubes, and trail length (`decay 0.9 / 0.985 / 1.`, sent to the feedback through `av_fb`).

The saved chopper chaos was lowered from 1.0 to 0.2, because at 1.0 every step is random and the jump-up patterns can't be heard.

Why the parts sounded out of key: the saved state had the bassline root on 12 (C) and the tampura key on 54 (F#). Both values were removed from `state/`, so the key now comes from one place.

## All-in-one: `digital_symphony.maxpat`
**Asked for:** "take all of these patches that are open and put them in one patch"

The same layout as `symphony.maxpat`, but with every instrument (and the
conductor) **embedded** in a single file instead of linked, so the whole set
lives in one patch. It's written by `symphony.py` after the linked version.
Keep it in `patches/max/`, because it still loads the `av_*.js` scripts and
`buddha_smear~.maxpat` (the `pfft~` loads that by name) from next to it, and
`jongly.aif` comes from Max's own media folder.

## The symphony window: `symphony.maxpat`
**Recipe:** `recipes/max/symphony.py` · **Asked for:** "make a gui patch that puts all the gui's together"

Every instrument's control panel in one window, using `bpatcher`s of each
patch's presentation view. `maxgen.py` builds each panel automatically: the
controls, their labels and the preset/action messages, with the internal
objects hidden and the empty gaps closed up. **Open this instead of the single
patches**, because it runs one copy of each, and two copies fight over buffers
and sends. The single patches now open in presentation mode too. To see their
internals, press ⌥⌘E (or click the presentation button in the toolbar).

## Feedback keys (fullscreen performance)
**Asked for:** "give me some keys to hit when im in fullscreen so control the feedback settings for the screen"

With **keys on** (the toggle in the feedback panel, on by default), `[key]` hears every Max window, including the fullscreen one:

| Key | Does |
|---|---|
| `f` | fullscreen on/off (Esc also leaves fullscreen) |
| `1` `2` `3` `4` `5` | decay 0.9 · 0.95 · 0.985 · 0.995 · 1.0 (infinite) |
| `↑` / `↓` | zoom in / out (by 0.004, range 0.9–1.1) |
| `←` / `→` | twist less / more (by 0.02, range -0.5 to 0.5) |
| `w` / `s` | drift more / less (by 0.002, range 0–0.05) |
| `c` | clear the screen, then restore the decay |
| `r` | reset decay, zoom, twist and drift to the defaults |
| `x` | wireframe cubes on/off |
| `a` | audio reactivity on/off |

**Audio reactivity** ("a little movement based on the music … use some transients to turn on the texture splash"): the chopper sends its output as `send~ av_drums`. The feedback patch follows it with two envelopes (`abs~` → `slide~ 10 2000` for fast and `slide~ 4000 8000` for slow):
- **Movement:** the fast envelope (about 30 updates a second, ×3, clipped to 0–1) becomes `amp`. The shader multiplies it by **amount** (0.15 by default) and uses it to nudge the zoom inward, add twist and swell the ring. It's deliberately subtle.
- **Splash:** a hit is when the fast envelope goes above the slow one × **hit threshold** (1.6 by default) and is above a small noise floor. Each hit (limited by `speedlim 90`) ramps `splash` from 1 to 0 over 350 ms. That makes the cube texture flare from 35% to full brightness and fires a ring bursting out from the center in the complementary colors.
- `av_amp` and `av_hit` are also broadcast for other patches to use. Controls: **react on** (or the `a` key), amount, **splash on**, hit threshold.

**Wireframe cubes** ("move 3D cubes in wireframe with multi colors like the circle around in the feedback loop"): `av_cubes.js` creates N `jit.gl.gridshape` cubes (5 by default, up to 24) drawing into `jit.gl.node cubes`. That node's captured texture is the pix's second input, so the cubes feed the loop like the ring does. Each cube orbits on its own path, tumbles and cycles through the rainbow.

Turn **keys on** off while typing into number boxes elsewhere, because the keys go to every window.

Every change is logged in `CHANGELOG.md` at the repo root.

## Saved state ("create a loadbang state of the current settings")

Max doesn't save most control values (number boxes, sliders, multisliders) in
the patch file, so the recipes record them instead:

1. Set everything up the way you like it in Max, with the instrument patches open.
2. Open `patches/max/state_capture.maxpat`. On load it runs `state_dump.js`,
   which walks every open window and writes `patches/max/captured_state.json`.
3. Run `python3 recipes/max/save_state.py && python3 recipes/max/build_all.py`.

`save_state.py` writes one `recipes/max/state/<patch>.json` per patch. When a
recipe builds that patch, `maxgen.py` adds a **SAVED STATE** column: a
`loadbang` triggers one message per control 0.6 s after the patch opens, after
all the presets have loaded, so the snapshot wins. Controls that follow a
`[r …]` (like the tampura's key) restore at 0.9 s so they win over broadcasts.
Display-only boxes are skipped. The visuals' render/fullscreen toggles aren't
saved.

**Not captured** (these are message clicks, not controls): the chopper's live
roll, held filter sweep, the jungle bass wobble rate, and which scale button
was last clicked. Delete a `state/*.json` file to go back to the recipe's
defaults.

## The ensemble

All the instruments share one clock and one key, so you can open any
combination and they play together.

| Send / receive | Sent by | Used by | Meaning |
|---|---|---|---|
| `jongly_step` | jongly chopper | bassline, jungle bass, bells | current step 0–15 (one step = 176.36 ms, ~170 bpm) |
| `av_scale` | bassline (scale buttons) | jungle bass, bells | scale as semitones over 2 octaves |
| `av_root` | bassline (root number) | tampura, jungle bass, bells | key as a MIDI note (33 = A1) |

If the chopper isn't running, switch on **free-run** in the bassline or bells
patch. It clocks them at the same tempo.

### 1. Jongly chopper: `jongly_chopper.maxpat`
**Recipe:** `recipes/max/feedback_and_chopper.py` (chopper section)

**Asked for:** "make a brakebeat chopper using jongly loop that is based on the
original modsquad patch beat chopper" … "the breaks need to roll through the
sequences" … "it should be more moving around and be more understandable … i
like the rolls though … just do one part that change the patterns like we had
originally"

**What it is:** ModSquad (Atau Tanaka, 2003, in Max's Examples) rebuilt as one
`gen~` codebox. The jongly loop is cut into 16 slices.
- **Slices** row: which slice each step plays. 0 = keep going into the next slice (ModSquad's `trapzero`). **17 = rest**, which is what makes breakdowns possible.
- **Rolls** row: how many times each step re-fires (1 = normal, 2–8 = roll).
- **Patterns** set both rows at once: straight, stutter, chop, roll, shuffle, half, backwards. The list lives in `recipes/max/ensemble.py` (shared with the conductor).
- **Jump-up** ("jumpup jungle 2 2 3 style"): `jump 2-2-3` groups the hits 2+2+3+2+2+3+2, `jump 3-3-2` groups them 3+3+2+3+3+2, and `jump roll` ends on a snare roll.
- **Breakdowns** ("the breaks should change in breakpu sometimes"): `breakdown` is a half-time kick and snare with rests, and `break build` brings the hits back in with a roll. AUTO includes both, so they come up now and then.
- **Compressor** ("add a little compression on the drum loop too to even it"): inside the `gen~`, after the slicing and before the filter sweeps. An envelope follower (3 ms attack, 120 ms release) drives the gain reduction. Defaults: on, threshold -20 dB, ratio 3:1, makeup +4 dB. The panel shows the live gain reduction in dB.
- **Pitch FX** ("pitch rolls and lfo pitch sync and multi trigger pitch lfo linked to the jongly sequencers"): each slice and roll hit has its own read pointer, so hits can be pitched without changing the timing. **Pitch roll** adds N semitones on each roll repeat. The **pitch LFO** (depth in semitones, rate) can be synced to the loop, to each step, or retriggered on each roll hit (multi-trigger), with a sine or saw "dive" shape.
- **Auto** picks a new pattern every N loops. **Chaos** sets the chance of a random jump on each step. **Live roll** rolls every step. **Rate** is tape speed.
- **Filter sweeps** ("trigger fiter sweeps on the drums" … "should auto trigger and never go down to 0 so they are audible"): `svf~` on the output. Click a sweep and it starts on the next beat. Choices: open, LP up, LP down+back, LP dip, LP wah, HP riser, HP swell. Every sweep stays audible (the low-pass never closes below about 260 Hz, the high-pass never rises above about 1.3 kHz) and ends fully open. **AUTO SWEEP** (on by default) fires a random sweep every N loops (2 by default), and **sweep now** fires one immediately. Each message is a mode (1 LP · 2 HP) followed by cutoff/time pairs (MIDI note, ms), so you can write your own. **Resonance** goes from 0 to 0.95.

### 2. Low tampura: `sine_test.maxpat` (+ `buddha_smear~.maxpat`)
**Recipe:** `recipes/max/tampura_drone.py`

**Asked for:** "build a new max patch just playing a cycle~ at .5 volume" →
"make a shifting fm drone out of this patch … for a fft buddhabox" → (it became
a bassline for a while: "adjust the pitches … so they generate a bassline kinda
thing", "add a random pattern with scales") → "keep this sine test as a drone
and then put some other bass on top of the drone and the sine test will be the
low tampura"

**What it is:** two 2-operator FM voices tuned to the shared key: Sa (the root)
on the left and Pa (the fifth) on the right. Their FM ratio and brightness drift
slowly, so the tone never settles. They're plucked in the tampura cycle
**Pa · Sa · Sa · Sa** (each pluck swells in over 80 ms and settles to half
volume, so the drone never stops), then go through a `pfft~` spectral smear
(`vectral~ slide 20 400`) and `degrade~` for lo-fi, at 0.5 gain.
- **Key** follows `av_root` from the bassline and glides over 800 ms when it changes.
- **Pluck cycle** toggle and **ms per pluck** (800 by default).
- **Level** slider ("we need level for the drone"; later "the drone is too loud"): 0 to 1, starts at 0.2, smoothed over 40 ms. The conductor's tampura fader drives it too.
- **Evolve** ("the drones need to be more evolving"): every N pluck cycles (3 by default), Pa glides over 4 s to another consonant interval (5th, 4th, octave or octave+5th, which are in key in every scale here). Each voice's FM brightness also drifts over 8 s toward a new random target between 0.8 and 3.5.

### 2b. Bassline: `bassline.maxpat`
**Recipe:** `recipes/max/bassline.py`

**Asked for:** "put some other bass on top of the drone" (it inherits the
bassline, scales and root that the tampura used to have)

**What it is:** a 16-step bassline locked to the chopper (or free-run at
170 bpm). The voice is a saw through a resonant `lores~` lowpass whose cutoff
snaps open on each note, plus a sine an octave below.
- **Bass** row: slider 1 = root, 13 = an octave up, 0 = tie. Presets: dub, walk, pedal, octaves, acid, rolling, squelch.
- **Scales:** click one to roll a random bassline in that scale. To add a scale, duplicate a message and edit the semitone numbers. Sends `av_scale`.
- **Root:** the key as a MIDI note. Sends `av_root`, so the tampura and bells retune with it.
- **Brightness:** how far the filter opens on each note (in Hz). The saved value was 200 Hz, which made the bass sound muffled at the start ("the bass doesn't reall sound like much when it starts"); it's now 1800 Hz, and the default level went up from 0.4 to 0.5.
- **Evolve** ("the bassline … isn't evolving enough"): every N loops (2 by default), `av_evolve_line.js` rewrites a few steps (3 by default) with notes from the current scale, leaving step 1 on the root. A quarter of the new steps are ties. About 1 in 5 times, two notes also jump up an octave; about 1 in 10 times, the groove shifts by two steps. Brightness drifts between 700 and 4000 Hz and resonance between 0.3 and 0.8, for acid squelch. It stays in key because the quantizer snaps every note. The conductor has a **bass evolve** toggle too (`av_bass_evolve`).
- **Evolve presets** ("and add presets to it"), as *every N loops · changes*: steady `4 1`, drift `2 3`, restless `1 5`, wild `1 8`. They're also in the conductor (`av_bass_evolve_preset`).

### 2c. Jungle bass: `jungle_bass.maxpat`
**Recipe:** `recipes/max/jungle_bass.py`

**Asked for:** "a jungle bass is what we need with the drone ... this acid sounds
cool too so lets add a fm jungle bass"

**What it is:** a deep FM sub for long, gliding jungle notes. The modulator runs
at `ratio` × pitch, and the FM index blooms up to **growl** on each note, then
settles. An optional wobble LFO on the index is synced to 170 bpm (1/2, 1/4,
1/8, 1/16). It's mixed with a pure sine sub, then goes through `tanh~` drive and
a gentle `lores~`. Key and scale follow the bassline patch.
- **Pattern** row: 1 = root, 13 = an octave up, 0 = tie (most steps are ties, so notes are long). Presets: roller, drop, steppy, dread, walk-down. **Random** stays in the shared scale, with 2 in 3 steps tied.
- **Evolve** ("jungle bass ins't evolving enouth"): every N loops (2 by default) it rewrites some steps (3 by default) with `av_evolve_line.js`, where 60% of the new steps are ties so notes stay long. It also re-rolls the sound: growl 1–6, ratio 0.5/1/1/2, wobble rate 1/2 · 1/4 · 1/8, and wobble depth 0–1. Presets: steady, drift, restless, wild. The conductor has **jungle evolve**, and its evolve presets drive both basses (`av_jungle_evolve`, `av_jungle_evolve_preset`).
- **Wobble sequencer** ("automate the wobbles … so it switches up"): each beat takes its wobble rate from a 4-beat pattern (steady, build, talk, triplet, stutter), and the LFO restarts on the beat. Evolve switches patterns.
- **Pocket** ("synced filters that aren't too extreme that make the bass suck into the pocket of the groove"): on each beat the 1400 Hz low-pass dips and the level ducks a little, then both recover over about 260 ms. The acid bassline has the same thing through a gentle 2500 Hz low-pass. The conductor's **bass pocket** sets both.
- **Octave** shifts it against the key. **Glide** in ms (90). **Growl**, **ratio** (1 = warm, 0.5 = growly, 2 = hollow), **wobble** rate and depth, **drive**.

### 3. Glass bells: `glass_bells.maxpat`
**Recipe:** `recipes/max/glass_bells.py`

**Asked for:** "we need one more instrument"

**What it is:** an FM bell (modulator at 3.5× for a glassy, inharmonic tone,
with the brightness decaying faster than the volume). It plays notes from the
bass's scale and key, two octaves up. It's clocked by the chopper and goes
through a ping-pong delay synced to 170 bpm (1/8 on the left, dotted 1/8 on the
right).
- **Density:** the chance (%) that a step plays a bell. **Arp:** walk up the scale instead of picking random notes.
- **Octave:** how far above the bass root it plays. **Decay:** bell length in ms.

### 4. Gen feedback visuals: `gen_feedback.maxpat`
**Recipe:** `recipes/max/feedback_and_chopper.py` (feedback section)

**Asked for:** "program a gen video patch that does infinite feedback in a new
window" … "make it so the texture gets sent right when the jit world is enabled"

**What it is:** `jit.world fbw` opens its own window. Each frame, a
`jit.gl.pix` codebox draws the previous frame back slightly zoomed and twisted,
with the color channels bleeding into each other, plus a wandering ring that
feeds new image into the loop. The **render** toggle sends a black seed texture
*and then* enables the world. When render turns on (including at load), the window is shown and brought to the front ("make the jit window load on load"). Messages: `decay 1.` (infinite), `zoom`,
`twist`, `drift`.

## Lessons learned (Max 9)
- `jit.world` sends its per-frame bang out its **middle** outlet. The left outlet only outputs when capture is on.
- Max's own feedback idiom: `jit.gl.pix` → a plain `jit.gl.slab` (to copy the frame) → `zl reg`, then on the next frame `zl reg` sends it back into the pix.
- `listfunnel` takes its index offset as an **argument** (`listfunnel 16`), not `@offset`.
- `peek~ name 1 0`: the third argument `0` turns off clipping. Otherwise values written into the buffer are clipped to the range -1 to 1.
- A message box can drive two destinations with commas: `s 1 2 3…, r 1 1 1…` → `[route s r]`.
- `line~` accepts several target/time pairs in one list: `1 4 0.15 300`.
- Embedded gen patchers use `"classnamespace": "dsp.gen"` (gen~) or `"jit.gen"` (jit.gl.pix).


## Chopper: pitch both ways + dynamics (velocity) in the loop

> "in max we need pitch down in the jongly chopper too so it can really go both ways and play fully expressibly and we can also have some velocities built into the loops so we can really build a dynamic"

- **TRANSPOSE** (−24 to +24 semitones, with buttons for −12, −7, −5, 0, +5, +7, +12) pitches the whole break down or up without changing its timing. Also controllable through `av_chop_transpose`.
- **STEP PITCH** row (purple): per-step semitones from −12 to +12. Presets: flat, dropend, riseend, dubdrop, seesaw, dive, octaves. It stacks with the pitch rolls and the pitch LFO; total pitch is limited to ±36 semitones.
- **VELOCITY** row (blue): per-step loudness. Presets: flat, groove (the default), accents, ghosts, swell, build, fade, drop. **dynamics amount** (0–1, also `av_chop_dyn`) scales how much the row affects the sound.
- Velocity is stored as a cut (1 − velocity) in `chopvelcut`, so an empty buffer means full volume and a failed load can never silence the drums.

## Vocal chops (`vocal_chops.maxpat`, recipe `vocal_chops.py`)

> "lets add one more sampler of a vocal sample that does chopped jungle yells every now and then"

- Six one-shot vocals are read from Ableton Live's Core Library at load: Chop Jungle, Chop Oi, Shout Wha, Crowd Hey, Check It Out, That Bass. The repo only stores their paths.
- **When:** on even jongly steps, a 30‰ chance per step (about one yell every few bars at 170 BPM), with a 2.5 s cooldown. Controls: **AUTO YELLS**, **YELL NOW**, chance, cooldown; `av_vox_yell` and `av_vox_chance` work from anywhere.
- **How:** a `gen~` voice plays a random vocal in a random chop style: clean, chopped (3× first 80 ms, "oi-oi-oi"), machine gun (4× 50 ms, +3 st), dropped (−5 st) or reverse. Each buffer's own sample rate keeps the pitch correct, and the read position is guarded the same way as the chopper fix.
- A dark dub delay (dotted 1/8 at 170 BPM, 265 ms, feedback through a 2.5 kHz low-pass) feeds into the level control. The conductor has a new **vox** fader (`av_level_vox`, 0.4).
- It is in `symphony.maxpat` and `digital_symphony.maxpat`, next to the visuals.

- **Pitch rolls / pitch LFO on-off** ("we should be able to turn off pitch rolls too"): two toggles next to the PITCH controls, **rolls** and **LFO**. Off keeps the settings and just stops applying them.


## Jongly Granular (`jongly_granular.maxpat`) — side by side with the speed chopper

> "can we make jongly granular too as an upgrade in a patch with the same patch copied and ment to played side by side with the granular version and the speed version"

- Both choppers now come from one recipe, `recipes/max/chopper.py` (`speed` builds `jongly_chopper.maxpat`, `granular` builds `jongly_granular.maxpat`; `feedback_and_chopper.py` runs both).
- **Speed version** (unchanged sound): tape-style, so pitch and speed move together. It now also sends its loop phase on `send~ jongly_phase`.
- **Granular version:** the same sequencer, slice/roll/velocity/pitch rows, presets, AUTO, chaos, sweeps and compressor. Each slice plays as **4 overlapping Hann grains**:
  - pitch (transpose, step pitch, pitch rolls, LFO) changes only the grains' playback rate
  - time moves through the slice at **time speed** (`scan`)
  - so it can drop an octave without slowing, or slow or freeze without changing pitch
- **GRAIN controls:** size (ms, 90), jitter (0.15), time speed (0, 0.25, 0.5, 1, 2), **freeze**, **sync**.
- **Sync:** with sync on, it follows the speed chopper's clock while that one is running, so both hit the same step. It free-runs at its own `rate` if the speed chopper isn't open or is stopped.
- **Independent:** own buffers (`g…`), own step send (`gjongly_step`), own receives (`av_gchop_*`, `av_gdrum_pattern`, …). So the conductor's drum buttons only drive the speed chopper, and the two can run different patterns. Mix with the conductor's new **gran** fader (`av_level_granular`, 0.35). Only the speed chopper feeds the visuals.
- In `symphony.maxpat` and `digital_symphony.maxpat` the granular chopper has its own row directly under the speed chopper (side by side was off-screen on a laptop).
