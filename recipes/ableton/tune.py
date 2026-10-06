import live
SET = {
 ("Warp Mallets", 1): {32: 1, 17: 0.56, 1: 0.3, 4: 1, 6: 4, 27: 1, 31: 0.45, 35: 0.45},          # Shifter: freq-shift, LFO-swept, barber-pole delay
 ("Warp Mallets", 2): {23: 0.62, 18: 0.55, 20: 0.3, 22: 0.6, 26: 0.35},                          # Spectral Time: shifting spectral echoes
 ("Warp Mallets", 3): {48: 1, 49: 0.35, 39: 0.2, 52: 0.3},                                        # Echo: wobbly tape echo
 ("Tension Bass", 1): {1: 0.45, 2: 0.35, 12: 0.35, 28: 0.65},                                     # Auto Filter: LFO + envelope plucks
 ("Corpus Clang", 1): {1: 3, 7: 0.7, 11: 0.3, 17: 1, 26: 0.3, 38: 0.55},                          # Corpus: inharmonic resonator, LFO drift
 ("Corpus Clang", 2): {1: 0.35, 3: 7, 4: 0.2, 5: 0.5, 6: 0.45},                                   # Grain Delay: pitched grain echoes
 ("Hats", 1): {1: 0.25, 6: 3, 10: 0.3, 13: 0.7},                                          # Beat Repeat: occasional stutters
 ("Meld Pad", 1): {13: 0.3, 18: 0.5},                                                         # Spectral Resonator: pitch drift
 ("Meld Pad", 2): {25: 0.5, 7: 2, 30: 0.5},                                                   # Phaser-Flanger: slow sweep
}
idx = {live.cmd("get_track_info", track_index=i)["name"]: i for i in range(live.cmd("get_session_info")["track_count"])}
for (name, di), ps in SET.items():
    ti = idx[name]
    for pi, v in ps.items():
        live.cmd("set_device_parameter", track_index=ti, device_index=di, parameter_index=pi, value=float(v))
print("tuned")
