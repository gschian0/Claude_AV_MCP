# Ableton recipes: "Warp Garden" session

> "lets now try to create a session in ableton with ableton mcp and create some cool frequency warping physical model sounds with cool time fased effects and evolving grooves"

These scripts send commands straight to the AbletonMCP Remote Script in Live (TCP 127.0.0.1:9877), using the same protocol as the `ableton` MCP server. Run them from this folder, with Live open and AbletonMCP selected as a control surface:

    python3 build_session.py   # adds 6 MIDI tracks, devices and clips (118 BPM, D dorian)
    python3 tune.py            # sets the effect parameters (finds tracks by name)
    python3 build_breakdown.py # part 2: Jungle Kit track + breakdown clips in slot 2
    python3 build_triphop.py   # part 3: Dream Keys track + trip-hop clips in slot 3
    python3 tune_dreamkeys.py  # Dream Keys effect settings
    python3 build_parts45.py   # part 4: Warp Garden B section (slot 4); part 5: jungle breakdown 2 + Dub Bass track (slot 5)
    python3 tune_dubbass.py    # Dub Bass sound
    python3 build_layers.py    # full-quality layer tracks; re-run after changing any source clips to re-copy them
    python3 build_outro.py     # part 6: classic jump-up DnB outro (DnB Kit + Jump Up Bass tracks, slot 6)
    python3 play_part.py 1-6   # 1 Warp Garden 118 · 2 jungle breakdown 170 · 3 trip-hop 85 · 4 B section 118 · 5 breakdown 2 170 · 6 DnB outro 174
    python3 live.py get_session_info

| Track | Sound | Effects | Clip length |
|---|---|---|---|
| Warp Mallets | Collision (physical-model mallet) | Shifter (LFO-swept frequency shift + barber-pole delay), Spectral Time, Echo (wobble) | 7 beats |
| Tension Bass | Tension (physical-model string) | Auto Filter (LFO + envelope), Roar | 16 beats |
| Corpus Clang | DS Clang | Corpus (inharmonic resonator, LFO), Grain Delay (+7 st) | 5 beats |
| Kick | DS Kick | Glue Compressor | 4 beats |
| Hats | DS HH | Beat Repeat (25% chance of a stutter), Auto Pan | 3 beats |
| Meld Pad | Meld | Spectral Resonator, Phaser-Flanger, Hybrid Reverb | 32 beats |

**Evolving grooves:** the clip lengths (3, 4, 5, 7, 16 and 32 beats) don't divide into each other, so the parts drift against each other and the full combination doesn't repeat for 3,360 beats, about 28 minutes at 118 BPM.

## Part 2: jungle breakdown (slot 2, 170 BPM)

> "make a next part of the clip to go into a jungle breakdown with a synthesized jungle kit in a drum rack with cool multi effects and a multi knob effects"

- **Jungle Kit** track: **DS Drum Rack**, where every pad is a Drum Synth device (no samples). This assumes the standard pad layout: 36 kick, 38 clap, 39/40 snares, 41/43/47 toms, 42/44/46 hats, 37/45/48 FM zaps, 49/51 cymbals, 50 clang. Then three macro racks:
  - **Drum Transistor**: Broken, Offset, Bottom Blast, Thin Signal, Notches, Dry/Wet (set to 85).
  - **Multiband Beat Repeat Echo**: mid and high stutter interval and grid, Echo Amount (45), Echo Time, Echo FB (55), Distort Pedal.
  - **Knob 1 Super Looper**: one **Repeat** knob; turn it up to loop or stutter the kit live.
- The 4-bar breakdown: bars 1–2 are a sub kick, a half-time snare, rolling ghost hats and tom answers; bar 3 is a full amen-style chop; bar 4 is half an amen, then a 32nd-note snare roll and an FM-zap pickup back to the top.
- The other tracks get breakdown clips too: long sub bass slides, held D minor → Bb pad chords, sparse mallets and clang. Kick and Hats stop.

## Part 3: half-time trip-hop (slot 3, 85 BPM)

> "make a half time triphop section with cool 4 part harmony and a new sound thats very realaximg physicl modeling"

- **Dream Keys** (new track): **Electric**, Live's physical-model electric piano (tines and pickups), going into Chorus-Ensemble, the Tape Flutter rack, Echo (25% wet, gentle tape wobble) and Hybrid Reverb (38% wet).
- **4-part harmony** (bass, tenor, alto, soprano), voice-led by step over 32 beats: Dm9 (D A C E) → B♭maj7 (B♭ A D F) → Gm9 (G B♭ D A) → A7sus4 (A G D G) → A7 (A G C♯ E), then back to Dm9. The upper three voices re-voice lazily on the "and" of beat 3, and soprano pickups lead into each chord.
- **Drums** on the synthesized Jungle Kit: kick on 1, a late kick, snare on 2 and 4, swung ghost 8th-note hats, an open hat and tom drag at the end of the phrase. 85 BPM is exactly half of 170.
- **Bass:** dub sub following the roots. **Mallets:** four high glassy notes over 16 beats.

## Part 4: Warp Garden B section (slot 4, 118 BPM)

> "need a nother version of the first part thats a b secton"

- The same tracks and sounds as part 1, moved to the B♭/F side of D dorian.
- Meld Pad chords: B♭maj9 → C6/9 → F/A → Gm11.
- New 9-beat mallet arpeggio, new bass line, a syncopated kick, and a 5-beat hat pattern.
- Loop lengths are 3, 4, 5, 9, 16 and 32 beats, so it still drifts.

## Part 5: jungle breakdown 2 + heavy dub bass (slot 5, 170 BPM)

> "we need a breakdown with longer phrases on the jungle line and heavy dub bass"

- **Jungle Kit, one 8-bar (32-beat) phrase:**
  - Bars 1–4 are space: sub kick, half-time snare, and hats that get a little louder each bar.
  - Bars 5–8 bring the break in and mutate it: amen, an edited amen, a tom-ending variation, then a drop bar with a 3-beat 32nd-note snare roll.
- **Dub Bass** (new track): Operator sine sub (some oscillator feedback grit) → Saturator (drive 0.68) → Auto Filter (dark low-pass, slow LFO) → Glue Compressor. Long held D1, B♭0 and C1 notes, with octave jumps and slides into the turnarounds.
- **Dream Keys:** offbeat dub-skank chord stabs (Dm9, then B♭maj7). **Meld Pad:** low drones. **Mallets:** three sparse notes.

## Full-quality layers (fatter mix)

> "lets layer some full quality sounds for a fatter mix so it's really robust"

Each layer is its own track. It copies **every clip of its source track** (all slots, so it follows every part) and ends in a Utility gain trim (about −6 to −9 dB). Bass, kick and drum layers also have Bass Mono on.

| Layer | Source | Sound | Notes |
|---|---|---|---|
| Keys Layer · Grand Piano | Dream Keys | Grand Piano (sampled) | under the Electric harmony |
| Pad Layer · Ensemble | Meld Pad | Classic Ensemble Pad | body under the spectral pad |
| Bass Layer · Analog | Tension Bass | Analog Bass | weight under the plucked string |
| Dub Mid · Saturated | Dub Bass | Basic Saturated Bass, **+1 octave** | makes the sub line audible on small speakers |
| Kick Sub · Boom | Kick | Basic Sub Boom, tuned to D2 | sub tail on the Warp Garden kick |
| Drum Layer · 909 | Jungle Kit | 909 Core Kit (sampled) | mapped by role: kick→bass drum, snares→snare, clap→clap, toms→mid tom, hats→closed/open, cymbals→crash; FM zaps and clang aren't layered |

Re-run `build_layers.py` whenever the source clips change; it replaces the layer clips instead of stacking them.

## Part 6: classic jump-up DnB outro (slot 6, 174 BPM)

> "make a simple clean jump up drum and bass outro not the crazy glitch psydub like we are doing and make it classic"

- **DnB Kit** (new track): Crisp Kit, with clean EQ, Overdrive and Glue on each pad and no stutter or spectral effects. The pads are assumed to map in chain order to notes 36–51 (Kick 1 = 36, Snare 1 = 38, Clap = 40, Hihat Closed = 41, Shaker = 47).
  - Kick on 1 and the "and" of 3; snare (plus a quiet clap) on 2 and 4; ghost snares.
  - Off-beat-accented 8th-note hats and rolling 16th shaker.
  - Open-hat lift at the top of the phrase, and a snare/tom fill every 4 bars.
- **Jump Up Bass** (new track): Reese Classic playing a bouncy 2-bar call and response with octave jumps. Bars 5–8 lift a minor third to the F centre.
- **Dub Bass:** clean sub roots. **Meld Pad:** Dm → B♭ → F → C (the Pad and Dub Mid layers follow automatically).
