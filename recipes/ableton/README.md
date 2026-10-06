# Ableton recipes: "Warp Garden" session

> "lets now try to create a session in ableton with ableton mcp and create some cool frequency warping physical model sounds with cool time fased effects and evolving grooves"

These scripts send commands straight to the AbletonMCP Remote Script in Live (TCP 127.0.0.1:9877), using the same protocol as the `ableton` MCP server. Run them from this folder, with Live open and AbletonMCP selected as a control surface:

    python3 build_session.py   # adds 6 MIDI tracks, devices and clips (118 BPM, D dorian)
    python3 tune.py            # sets the effect parameters (track indices assume the 4 default tracks come first)
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
