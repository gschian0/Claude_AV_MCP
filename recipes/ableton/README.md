# Ableton recipes: "Warp Garden" session

> "lets now try to create a session in ableton with ableton mcp and create some cool frequency warping physical model sounds with cool time fased effects and evolving grooves"

These scripts send commands straight to the AbletonMCP Remote Script in Live (TCP 127.0.0.1:9877), using the same protocol as the `ableton` MCP server. Run them from this folder, with Live open and AbletonMCP selected as a control surface:

    python3 build_session.py   # adds 6 MIDI tracks, devices and clips (118 BPM, D dorian)
    python3 tune.py            # sets the effect parameters (finds tracks by name)
    python3 build_breakdown.py # part 2: Jungle Kit track + breakdown clips in slot 2
    python3 play_part.py 1|2   # switch parts: 1 = Warp Garden at 118 BPM, 2 = jungle breakdown at 170 BPM
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
