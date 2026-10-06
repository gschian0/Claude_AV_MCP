# Architecture

## Three planes

The single most important design rule: **MCP is too slow and too chatty for
anything on the beat.** A tool call takes hundreds of milliseconds to seconds.
So the system is split by timescale:

| Plane | Timescale | What travels | How |
|---|---|---|---|
| **Authoring** | seconds–minutes | "add a track", "build a granular patch", "write a shader" | MCP servers that *edit* programs: `ableton-mcp`, `MaxMSP-MCP`, later a visuals MCP |
| **Direction** | ~1–30 Hz | scene state: energy, section, palette, cues, ramps | `av-conductor` (this repo) → OSC/UDP to every program |
| **Realtime** | audio rate / every frame | beat phase, tempo, audio envelopes, FFT bands, video frames | Never via Claude. Ableton Link, MIDI clock, OSC from Max/Pd straight to visuals, Syphon (mac) / v4l2loopback·PipeWire (Linux) |

Claude lives in the top two planes. It composes the instruments and the
mappings, then *conducts* — it never sits in the per-frame loop.

```
                 ┌──────────────── Claude (Desktop / Code) ────────────────┐
                 │ MCP stdio               │ MCP stdio               │ MCP stdio
                 ▼                         ▼                         ▼
           ableton-mcp             MaxMSP-MCP-Server           av-conductor
                 │ TCP :9877               │ Socket.IO :5002         │
                 ▼                         ▼                         │  OSC /av/*
      ┌──────────────────┐      ┌────────────────────┐               │  (scene, cues,
      │   Ableton Live   │      │      Max/MSP       │◄──────────────┤   ramps)
      │  (Remote Script) │─────►│ envelope, FFT, etc │               │
      └────────┬─────────┘audio └─────────┬──────────┘               │
               │                          │ OSC (per frame)          ▼
               │                          └──────────────►┌────────────────────┐
               └──── Ableton Link (tempo / beat phase) ──►│ Visual engine (TBD)│
                                                          └────────────────────┘
   authoring plane: top three arrows · direction plane: av-conductor · realtime: bottom arrows
```

## Upstream servers (unchanged, used as-is)

| Server | Bridge | Port | Notes |
|---|---|---|---|
| [ahujasid/ableton-mcp](https://github.com/ahujasid/ableton-mcp) | Python MCP ⇄ TCP JSON ⇄ Live MIDI Remote Script | 9877 (`ABLETON_PORT`) | Tracks, clips, notes, devices, browser, transport. **Telemetry is on by default** — `.mcp.json` sets `ABLETON_MCP_DISABLE_TELEMETRY=true` and `ABLETON_MCP_DISABLE_DATASET=true`. |
| [tiianhk/MaxMSP-MCP-Server](https://github.com/tiianhk/MaxMSP-MCP-Server) | Python MCP ⇄ Socket.IO ⇄ Node for Max ⇄ `[v8]` JS | 5002 (`SOCKETIO_SERVER_PORT`) | Add/remove/connect objects, set attributes, read patch, Max object docs. Requires Max 9 (`v8`). |

Both are pure "authoring" servers: they edit the program. Neither carries
performance state between programs — that's the gap `av-conductor` fills.

## av-conductor

`src/av_mcp/`

- `core/scene.py` — the `Scene` dataclass: `bpm`, `energy`, `key`, `section`,
  `palette`, `macros`. Semantic, not program-specific.
- `core/conductor.py` — owns the scene, diffs changes, fans them out to all
  targets, runs ramps at `ramp_rate_hz`, stores cues.
- `adapters/` — a `Target` is anything that can receive a message. Only
  `OscTarget` exists today; add WebSocket/MIDI/shared-memory targets here
  when the visual engine is chosen.
- `server.py` — FastMCP tools: `get_state`, `set_scene`, `ramp`,
  `save_cue`, `recall_cue`, `send_osc`, `resend_all`.
- `monitor.py` — `av-osc-monitor`: print OSC traffic with nothing else running.

## OSC namespace

All under `osc_prefix` (default `/av`). One field per message so receivers
only route what they care about.

| Address | Args | Meaning |
|---|---|---|
| `/av/scene/energy` | float 0–1 | The master macro. Every target maps it to its own parameters. |
| `/av/scene/bpm` | float | Informational for visuals. Use Ableton Link for actual sync. |
| `/av/scene/section` | string | `intro`, `verse`, `drop`, … |
| `/av/scene/key` | string | e.g. `C minor` |
| `/av/scene/palette` | string… | Hex colors, e.g. `#ff006e #fb5607` |
| `/av/macro/<name>` | float 0–1 | Free-form macros (`brightness`, `chaos`, `density`) |
| `/av/cue` | string | Sent after a cue is recalled, for triggering transitions |

Raw messages outside this scheme go through the `send_osc` tool.

## Ports

| Port | Who listens | Protocol |
|---|---|---|
| 9877 | Ableton Remote Script | TCP JSON (ableton-mcp) |
| 5002 | Max `node.script` | Socket.IO (MaxMSP-MCP) |
| 7400 | Max `[udpreceive]` | OSC |
| 7401 | Visual engine | OSC |
| 7402 | Pure Data `[netreceive -u -b]` | OSC |
| 7499 | `av-osc-monitor` | OSC |
| 20808 | Ableton Link peers | UDP multicast (Link) |

## Why OSC

Every candidate program on both macOS and Linux speaks it natively: Max, Pd,
SuperCollider, TouchDesigner, VDMX, Resolume, Processing, openFrameworks,
Godot (addon), Nannou, Ardour, Hydra (via a small bridge). That's what makes
the Linux port a config change instead of a rewrite.
