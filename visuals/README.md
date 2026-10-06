# Visual engine — to be selected

The conductor doesn't care which engine you pick as long as it can receive
OSC on port 7401 (`[targets.visuals]` in `config/av.toml`). Put each
candidate's receiver sketch in `visuals/<engine>/`.

## Criteria

1. Receives OSC (or WebSocket, via a new adapter) with low latency
2. Runs on macOS (Apple Silicon) **and** Linux — avoids a second rewrite
3. Open source, or at least a free tier that's usable for shows
4. Scriptable from text files, so Claude can author it (shaders, code,
   scene files) — this is what a future visuals MCP would edit
5. Can take live audio or per-frame OSC for audio reactivity
6. Runs smoothly on a cheap integrated GPU

## Candidates

| Engine | macOS | Linux | Open source | Text-authorable | Notes |
|---|---|---|---|---|---|
| **TouchDesigner** | ✅ | ❌ | ❌ | partial (Python) | Industry standard; non-commercial license limits resolution; no Linux |
| **VDMX / Resolume** | ✅ | ❌ | ❌ | ❌ | Great for VJ performance, poor for Claude authoring, no Linux |
| **Hydra** (browser) | ✅ | ✅ | ✅ | ✅ (JS one-liners) | Very Claude-friendly; needs OSC→WebSocket bridge (add an adapter) |
| **Processing / p5.js** | ✅ | ✅ | ✅ | ✅ | `oscP5` library; easy to learn |
| **openFrameworks** | ✅ | ✅ | ✅ | ✅ (C++) | Fast; slower iteration (compile) |
| **Nannou** (Rust) | ✅ | ✅ | ✅ | ✅ | Fast; Rust learning curve |
| **Godot 4** | ✅ | ✅ | ✅ | ✅ (GDScript, shaders) | Full 3D engine; OSC via addon |
| **Pd + GEM / Max Jitter** | ✅ | GEM ✅ | GEM ✅ | via the Pd/Max MCPs | Keeps audio and visuals in one environment |
| **Blender (EEVEE realtime)** | ✅ | ✅ | ✅ | ✅ (Python) | Heavy; better for rendered pieces than live |

Suggested shortlist to test: **Hydra** (most Claude-friendly), **Godot**
or **openFrameworks** (most capable), **Max Jitter** (zero extra
software on the Mac, but no Linux path except Pd/GEM).
