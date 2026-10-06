# macOS → Linux (open source) mapping

| Role | Mac (now) | Linux, open source | MCP bridge on Linux |
|---|---|---|---|
| DAW / sequencer | Ableton Live | **Ardour** (OSC control surface), Zrythm, or DAW-less with **SuperCollider** / Pd | New `ardour-mcp` over Ardour's OSC API, or SuperCollider via OSC to `sclang` |
| Visual-programming audio | Max/MSP | **Pure Data** (vanilla, + `abl_link~`, `ELSE`, `cyclone`) | New `pd-mcp` (see below) |
| Sync | Ableton Link | Ableton Link (GPL; Pd `abl_link~`, SuperCollider `LinkClock`) | — (realtime plane) |
| Audio routing | BlackHole / Loopback | **PipeWire** (JACK-compatible); `qpwgraph` to patch | — |
| Virtual MIDI | IAC Driver | ALSA `snd-virmidi`, `a2jmidid`, PipeWire MIDI | — |
| Video sharing between apps | Syphon | `v4l2loopback`, or keep everything in one engine | — |
| Visuals | TBD | Hydra, Processing, openFrameworks, Godot, Nannou, Pd/GEM | Engine-specific |
| MCP client | Claude Desktop / Claude Code | Claude Code runs natively on Linux; open-source MCP clients exist for local models | — |

## The pd-mcp server (biggest Phase-4 item)

Pd can be patched live with plain messages, which makes it an easier MCP
target than Max:

```
[netreceive 3000]        ← pd-mcp connects here (FUDI over TCP, ';'-terminated)
  → [s pd-mypatch.pd]    ← "obj 50 50 osc~ 440;" "connect 0 0 1 0;" "msg 10 10 bang;"
```

Planned tools mirror MaxMSP-MCP so prompts transfer: `add_object`,
`connect_objects`, `remove_object`, `send_message`, `get_objects_in_patch`
(read the saved `.pd` file — it's plain text), `get_object_doc` (from Pd's
help patches). Gotcha: Pd addresses objects by creation index, not name,
so pd-mcp must track indices itself.

## Hardware notes for the cheap laptop

- Prefer AMD Ryzen + integrated Radeon (good Mesa/Vulkan/OpenGL drivers) or
  Intel Iris Xe; avoid NVIDIA hybrid graphics for a first build
- 16 GB RAM is enough without local LLMs; 32 GB if you want a local model
- Low-latency setup: `linux-lowlatency` (Ubuntu) or a distro with
  PipeWire + `rtkit` defaults (Fedora, Ubuntu Studio), add user to `audio`
  group, disable CPU frequency scaling while performing
- Ubuntu Studio is a sensible starting point: ships PipeWire, Ardour, Pd,
  and realtime config

## Porting checklist

1. `config/av.toml`: point targets at Pd (7402) and the Linux visual engine
2. Swap `.mcp.json` entries: `ableton` → `ardour` (or `supercollider`), `maxmsp` → `pd`
3. Keep `av-conductor` unchanged — if you need to edit it, the abstraction leaked
4. Re-run the Phase 2 demo
