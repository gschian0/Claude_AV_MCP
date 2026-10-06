# Changelog

Every change to the repo, newest first. Each entry quotes what was asked for
(where there was a request) and lists what changed, with the commit hash.
Musical details for each instrument are in `recipes/DIGITAL_SYMPHONY.md`.

## 2026-10-06

### `715ef1c` Granular chopper plays its own break, fitted to jongly
> "i just can't hear the granular chopper can you have it play a different loop synced up to jongly ?"
- Likely reason it was inaudible: it played the same jongly loop, slices and steps as the speed chopper, so it only doubled it.
- `buffer~ gjongly` now loads its own break from Live's Core Library. **LOOP** buttons: dnblive (D&B Live 170, the default, same 2.82 s length as jongly), rolling (D&B Rolling 170), scatty (Break Scatty 174), funkchop (Break Funk Chop 115), or jongly.
- **fit** (on by default): the granular `gen~` reads jongly's length (`Buffer ref("jongly")`) and scales grain time speed by loop length ÷ jongly length, so any loop's 16 slices land on jongly's 16 steps without changing pitch. The free-running clock also uses jongly's length.

### `6fedae1` `granular_side.maxpat`: the granular chopper in its own window
> "just make a new patch with the granular to open side by side"
- New `granular_side.maxpat` (built by `symphony.py`) with the granular chopper embedded, to open next to `digital_symphony.maxpat`. It syncs to the speed chopper there through `jongly_phase`, and the conductor's **gran** fader still works.
- The granular chopper was taken back out of `symphony.maxpat` and `digital_symphony.maxpat`, so only one copy ever runs.

### `18448de` Granular chopper visible: own row under the speed chopper
> "i don't see the granular one"
- It was placed to the right of the speed chopper at x = 1372, which is off-screen on a 1512-pt-wide laptop display. It now has its own row directly below the speed chopper in `symphony.maxpat` and `digital_symphony.maxpat`, and the window is back to 1500 wide.

### `1972cdb` Jongly Granular: a granular chopper to play side by side with the speed chopper
> "can we make jongly granular too as an upgrade in a patch with the same patch copied and ment to played side by side with the granular version and the speed version"
- The chopper moved into `recipes/max/chopper.py`, which builds both `jongly_chopper.maxpat` (speed, unchanged apart from a new `send~ jongly_phase`) and the new `jongly_granular.maxpat`.
- The granular `gen~` has 4 overlapping Hann grains, independent pitch and time, GRAIN size, jitter, time speed, freeze and sync. It follows the speed chopper's phase when that one is running and free-runs otherwise, with the same crash guards.
- Own buffers, sends and receives (`g` prefix); conductor **gran** fader; both choppers side by side in the symphony patches.

### `b6b816d` Chopper: pitch rolls and pitch LFO on/off
> "we should be able to turn off pitch rolls too"
- Two toggles next to the PITCH controls: **rolls** (`prollon`) and **LFO** (`lfoon`), both on by default. Off stops applying the effect but keeps its settings. Also controllable through `av_chop_prollon` / `av_chop_lfoon`.

### `3050c6b` Glass bells audible again
> "fix the glass bells i can't really even hear them"
- Cause: the baked 15:59 state had the bells' octave at **263** semitones above the bass root, which puts every note above hearing, and decay at **79 ms** (tiny clicks). Both were kept as captured at the time and flagged as odd.
- The saved state now restores octave 24 and decay 1600 ms. The octave box is limited to 0–36 and decay to 200–6000 ms, so a stray drag can't silence them again. Starting level raised from 0.25 to 0.35 (bells patch and conductor fader).

### `44912b3` Max: chopper pitch both ways + per-step velocity; new vocal chops sampler
> "in max we need pitch down in the jongly chopper too so it can really go both ways ... some velocities built into the loops ... add one more sampler of a vocal sample that does chopped jungle yells every now and then"
- Jongly chopper `gen~`: `transpose` (±24 st), per-step pitch (`choppitch`, ±12 st), per-step velocity (`chopvelcut`) with a `dyn` amount. A new panel column has VELOCITY and STEP PITCH rows, 8 dynamics and 7 pitch presets, transpose buttons, and `av_chop_transpose` / `av_chop_dyn` receives. Existing controls haven't moved, so the baked saved state still applies.
- New `vocal_chops.maxpat` (recipe `vocal_chops.py`): six Core Library yells, a random chance per beat with cooldown, five chop styles, a guarded `gen~` voice and a dub delay. Added to the conductor mix (**vox**), `build_all.py`, `symphony.maxpat` and `digital_symphony.maxpat` (which now has the visuals and vocals on their own row).

### `54df1a3` Ableton part 6: classic jump-up DnB outro
> "make a simple clean jump up drum and bass outro not the crazy glitch psydub like we are doing and make it classic"
- New **DnB Kit** (Crisp Kit) and **Jump Up Bass** (Reese Classic) tracks; slot 6 clips: two-step drums with 4-bar fills, call-and-response Reese riff, sub roots, Dm–B♭–F–C pad. `play_part.py 6` plays it at 174 BPM. Layers re-copied.

### `4481ffe` Ableton: full-quality layers
> "lets layer some full quality sounds for a fatter mix so it's really robust"
- `build_layers.py`: six layer tracks (Grand Piano, Ensemble Pad, Analog Bass, Saturated Bass +1 octave, Sub Boom, 909 Core Kit). Each copies every clip of its source track and has a Utility trim, with Bass Mono on the low-end layers. The 909 notes are mapped by drum role from the DS kit.

### `b0716b6` Ableton parts 4 and 5: B section and dub jungle breakdown
> "need a nother version of the first part thats a b secton and we need a breakdown with longer phrases on the jungle line and heavy dub bass"
- Slot 4: Warp Garden B section on the B♭/F side, with new mallet, bass, kick, hat, clang and pad parts.
- Slot 5: 8-bar evolving jungle phrase, new **Dub Bass** track (Operator → Saturator → Auto Filter → Glue Compressor), Dream Keys dub skank, drone pad.
- `play_part.py` handles parts 1–5; `tune_dreamkeys.py` can now be imported (its `by_name` helper is shared).

### `d2e978f` Ableton part 3: half-time trip-hop
> "make a half time triphop section with cool 4 part harmony and a new sound thats very realaximg physicl modeling"
- New **Dream Keys** track: Electric (physical-model electric piano) → Chorus-Ensemble → Tape Flutter → Echo → Hybrid Reverb.
- Slot 3 clips: a 4-part voice-led Dm9–B♭maj7–Gm9–A7sus–A7 progression, half-time drums on the Jungle Kit, a sub bass line, and sparse mallets. `play_part.py 3` plays it at 85 BPM.

### `8a3460a` Ableton part 2: jungle breakdown
> "make a next part of the clip to go into a jungle breakdown with a synthesixed jungle kit in a drum rack with cool multi effects and a muti knob effects"
- New **Jungle Kit** track: DS Drum Rack (all synthesized) → Drum Transistor → Multiband Beat Repeat Echo → Knob 1 Super Looper (macro racks).
- Breakdown clips in slot 2 on Jungle Kit, Tension Bass, Meld Pad, Warp Mallets and Corpus Clang. `play_part.py` switches parts and tempo (1 = 118 BPM, 2 = 170 BPM).
- `tune.py` now finds tracks by name, because the default tracks were removed from the set and its indices no longer matched.

### `ae15430` Ableton "Warp Garden" session
> "lets now try to create a session in ableton with ableton mcp and create some cool frequency warping physical model sounds with cool time fased effects and evolving grooves"
- `recipes/ableton/`: `live.py` (a minimal client for the AbletonMCP Remote Script), `build_session.py` (six tracks with physical models: Collision, Tension, Corpus, plus Meld and DS drums), and `tune.py` (frequency-shift, spectral, grain and stutter settings). The clips are 3, 4, 5, 7, 16 and 32 beats long, so the grooves drift against each other. No changes to Max.

### `370f637` Crash fix: chopper `gen~` can no longer read outside its buffer
> "max quit" (crash report: `EXC_BAD_ACCESS` in `dsp_gen_perform64` on the audio thread)

- The crash was in the jongly chopper's `gen~`, the only `gen~` in the set. The registers show a float-to-int overflow (`0x7fffffff` / `0x80000000`) and an infinity, which fits a NaN or infinite read index making `sample()` read far outside the `jongly` buffer. The likely triggers are the buffer briefly being empty (length 0 divides by zero, and the NaN then sticks in the History) or an extreme pitch value.
- Guards: buffer length floored at 1 and output muted until the loop is loaded; `rate` clamped to ±4; pitch-roll step clamped to ±12, LFO depth to 0–24, total pitch to ±36 semitones; the per-hit read pointer is clamped and NaN-reset; the final read index is NaN-checked and clamped to 0–1; the compressor's envelope is NaN-reset. The sound is unchanged at normal settings.

### `fea127d` Pitch FX on the breaks, wobble sequencer, pocket filters, saved state from the "perfect" run
> "this run is perfect exactly where it is now ... can we also add pitch rolls and lfo pitch sync and multi trigger pitch lfo linked to the jongly sequencers ... automate the wobbles and parameters on the wobble bass so it switches up and the basses should have some synced filters that aren't too extreme that make the bass suck into the pocket of the groove .. make sure to log all changes"

- **Saved state:** baked the 15:59 capture of every instrument exactly as captured, with one exception. The chopper's **rate** box reads 0 even while the drums play at rate 1, because it's only given a display value at load, so it isn't restored. `save_state.py` now has a per-control `EXCLUDE` list for cases like this and no longer skips the visuals patch. Values in this capture that look unusual but were kept as asked: bells octave 263, jungle ratio 52, tampura key 12, tampura evolve every 696 cycles, drum compressor off.
- **Jongly chopper, pitch FX** (inside the `gen~`): each slice and roll hit now has its own read pointer, so hits can be pitched without changing the pattern's timing.
  - **Pitch rolls:** `prstep` semitones are added on each roll repeat (1 by default; negative values make falling rolls).
  - **Pitch LFO:** `lfodepth` semitones (0.5) and `lforate` (1). `lfomode` sets what it's synced to: 0 = the loop, 1 = each step, 2 = each roll hit (multi-trigger, the default). `lfoshape` is 0 = sine or 1 = saw "dive".
  - **PITCH** controls on the chopper panel.
- **Jungle bass, wobble sequencer:** every beat the wobble rate changes from a 4-beat pattern, and the LFO restarts on the beat so wobbles lock to the drums. Patterns: steady, build, talk (the default), triplet, stutter. Evolve now switches between these patterns instead of picking one rate. **auto wobble** toggle.
- **Both basses, pocket filters:** `maxgen.add_pocket()`. On each beat a low-pass dips and the level ducks by up to 30%, then both recover over about 260 ms. Amount goes from 0 to 1 (0.5 by default), and the conductor's **bass pocket** sets it through `av_pocket`. Acid: a new gentle 2500 Hz low-pass that dips up to 80%. Jungle: its 1400 Hz low-pass dips up to 70%.
- **Changelog:** added this file.

### `04beab2` All-in-one patch
> "take all of these patches that are open and put them in one patch"
- `digital_symphony.maxpat`: the conductor and every instrument **embedded** in one file (written by `symphony.py`).

### `7506d61` Evolving jungle bass; the set plays by itself
> "jungle bass ins't evolving enouth ... this should just play and when it starts make the jit window load on load"
- Jungle evolve: `av_evolve_line.js` with 60% ties, plus growl, ratio and wobble re-rolls every N loops, with presets. Added to the conductor.
- The conductor switches audio on 1.5 s after load. The visuals window is shown and brought to the front when render turns on.
- `av_evolve_line.js` takes a tie probability.

### `fb77fe2` Drum compressor, quieter drone, fuller bass
> "the bass doesn't reall sound like much when it starts and the drone is too loud ... lets add a little compression on the drum loop"
- A compressor in the chopper `gen~` (3 ms / 120 ms, -20 dB, 3:1, +4 dB makeup) with a gain-reduction readout.
- Tampura starts at 0.2. The bassline starts at 0.5 with saved brightness 1800 Hz (was 200 Hz).

### `e78f1a5` (+ code in `6b1e10a`) Audio-reactive visuals
> "a little audio reactivity ... and to use some transients to turn on the texture splash"
- The drums are sent to the visuals (`send~ av_drums`). Loudness gently moves zoom, twist and the ring; each hit flares the cubes and bursts a ring. Controls: react on, amount, splash on, hit threshold, and the `a` key. Sends `av_amp` and `av_hit`.

### `6b1e10a` Bassline presets
> "and add presets to it pelase"
- Evolve presets: steady, drift, restless, wild (also in the conductor). Line presets: acid, rolling, squelch.

### `eeadf22` Evolving acid bassline
> "THE BASSLINE ... ISN'T EVOLVING ENOUGH"
- `av_evolve_line.js` rewrites steps from the scale every N loops (occasional octave jumps and groove shifts), with brightness and resonance drift. Conductor **bass evolve** toggle.
- Baked a capture, except rate 0, the zeroed jungle bass, the silent tampura and the visuals.

### `3a1bdde` Audible auto-sweeps, jump-up, breakdowns, conductor runs everything
> "THE TRIGGERS FILTERS SHOULD AUTO TRIGGER AND NEVER GO DOWN TO 0 ... BREAKS SHOULD CHANGE ... JUMPUP JUNGLE 2 2 3 STYLE ... A PATCH THAT CONTROLS EVERYTHING"
- Slice value 17 = rest. Patterns: jump 2-2-3, jump 3-3-2, jump roll, breakdown, break build (shared list in `ensemble.py`).
- Sweeps rewritten so they stay audible and end open. **AUTO SWEEP** and **sweep now**.
- Conductor: drum patterns, auto switches, chaos, and visuals (render, fullscreen, cubes, trails). Saved chaos lowered from 1.0 to 0.2.

### `784e040` Conductor, in-key basslines, evolving tampura, wireframe cubes
> "the bassline needs to be more in key and the drones need to be nore evolving and i would like one patch to control them all" / "MOVE 3D CUBES IN WIREFRAME WITH MULTI COLORS"
- `conductor.maxpat`: key, scale, re-rolls, mix, evolve, audio. `av_quantize.js` snaps both basses to the scale, and there's one shared key (the saved C / F# mismatch was removed).
- Tampura evolve: Pa walks between consonant intervals and the FM brightness drifts.
- `av_cubes.js`: multicolored wireframe cubes rendered into the feedback loop (`x` key).

### `b4262f9` Symphony window and feedback keys
> "make a gui patch that puts all the gui's together and give me some keys to hit when im in fullscreen"
- `symphony.maxpat` with automatic presentation panels. `[key]` control: f, 1-5, arrows, w/s, c, r.

### `41bd3c9` Saved state
> "get the state of the current patches and create a loadbang state of the current settings"
- `state_capture.maxpat` + `state_dump.js` → `save_state.py` → `recipes/max/state/*.json` → a SAVED STATE block in each patch.

### `b25c1fc` Tampura level
> "we need level for the drone"

### `daad0f7` FM jungle bass and drum filter sweeps
> "add a fm jungle bass and also trigger fiter sweeps on the drums"

### `a1b5755` Tampura + separate bassline
> "keep this sine test as a drone ... put some other bass on top ... the sine test will be the low tampura"

### `273bd9f` Rhythm row rolled back
> "go back to the previous bass please"

### `174149c` Digital Symphony instruments and recipes
> "we need the timings to change up on the bass ... one more instrument ... back up the text used to created the insturments"
- The FM drone/bass, the jongly chopper (ModSquad-style), glass bells and gen feedback visuals, plus the `recipes/max/*.py` generators and `DIGITAL_SYMPHONY.md`.

### `f34c1e8` maxmsp MCP server launch fix
- `.mcp.json` runs the maxmsp server from its own venv, because `uv run --with-requirements` never answered MCP's startup handshake.

### `ead7ac8` Upstream servers as submodules
- `vendor/ableton-mcp` and `vendor/MaxMSP-MCP-Server` are git submodules, so they're backed up with the repo.
