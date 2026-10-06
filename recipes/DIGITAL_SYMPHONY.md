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

## The ensemble

All the instruments share one clock and one key, so you can open any
combination and they play together.

| Send / receive | Sent by | Used by | Meaning |
|---|---|---|---|
| `jongly_step` | jongly chopper | bass, bells | current step 0–15 (one step = 176.36 ms, ~170 bpm) |
| `av_scale` | bass (scale buttons) | bells | scale as semitones over 2 octaves |
| `av_root` | bass (root number) | bells | key as a MIDI note (33 = A1) |

If the chopper isn't running, switch on **free-run** in the bass or bells
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
- **Slices** row: which slice each step plays. 0 = keep going into the next slice (ModSquad's `trapzero`).
- **Rolls** row: how many times each step re-fires (1 = normal, 2–8 = roll).
- **Patterns** set both rows at once: straight, stutter, chop, roll, shuffle, half, backwards.
- **Auto** picks a new pattern every N loops. **Chaos** sets the chance of a random jump on each step. **Live roll** rolls every step. **Rate** is tape speed.

### 2. Buddhabox bass: `sine_test.maxpat` (+ `buddha_smear~.maxpat`)
**Recipe:** `recipes/max/buddhabox_bass.py`

**Asked for:** "build a new max patch just playing a cycle~ at .5 volume" →
"make a shifting fm drone out of this patch … for a fft buddhabox" → "adjust the
pitches … so they generate a bassline kinda thing" → "add a random pattern with
scales" (a rhythm row with swing was tried, then rolled back: "go back to the
previous bass")

**What it is:** two 2-operator FM voices (root on the left, a fifth up on the
right). Their FM ratio and brightness drift slowly, so the tone never settles.
They play a 16-step bassline, go through a `pfft~` spectral smear
(`vectral~ slide 4 200`), then `degrade~` for lo-fi, at 0.5 gain.
- **Bass** row: slider 1 = root, 13 = an octave up, 0 = tie. Presets: dub, walk, pedal, octaves.
- **Scales:** click one to roll a random bassline in that scale. To add a scale, duplicate a message and edit the semitone numbers.
- **Root:** the key as a MIDI note.
- **Envelope:** every new note plucks, then settles to 30% so the drone continues under the line.

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
*and then* enables the world. Messages: `decay 1.` (infinite), `zoom`,
`twist`, `drift`.

## Lessons learned (Max 9)
- `jit.world` sends its per-frame bang out its **middle** outlet. The left outlet only outputs when capture is on.
- Max's own feedback idiom: `jit.gl.pix` → a plain `jit.gl.slab` (to copy the frame) → `zl reg`, then on the next frame `zl reg` sends it back into the pix.
- `listfunnel` takes its index offset as an **argument** (`listfunnel 16`), not `@offset`.
- `peek~ name 1 0`: the third argument `0` turns off clipping. Otherwise values written into the buffer are clipped to the range -1 to 1.
- A message box can drive two destinations with commas: `s 1 2 3…, r 1 1 1…` → `[route s r]`.
- `line~` accepts several target/time pairs in one list: `1 4 0.15 300`.
- Embedded gen patchers use `"classnamespace": "dsp.gen"` (gen~) or `"jit.gen"` (jit.gl.pix).
