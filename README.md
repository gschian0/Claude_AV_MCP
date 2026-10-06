# Claude_AV_MCP

Sandbox for **audio-visual MCP experiments** aimed at technical artists:
Claude builds instruments and visuals and conducts live AV sets across
Ableton Live, Max/MSP and a visual engine (TBD) — first on a MacBook Pro
M5, later on a cheap Linux laptop with an all-open-source stack.

## How it fits together

| Server | Role | Source |
|---|---|---|
| `ableton` | Edit the Live set: tracks, clips, notes, devices, transport | [ahujasid/ableton-mcp](https://github.com/ahujasid/ableton-mcp) (upstream, unchanged) |
| `maxmsp` | Edit Max patches: add/connect objects, read docs | [tiianhk/MaxMSP-MCP-Server](https://github.com/tiianhk/MaxMSP-MCP-Server) (upstream, unchanged) |
| `av-conductor` | Shared scene (energy, section, palette, cues, ramps) → OSC to every program | **this repo**, `src/av_mcp/` |

Upstream servers *author*; the conductor *directs*; beat-accurate sync and
audio reactivity stay in the realtime plane (Ableton Link, OSC between
programs) where Claude never blocks them. Details:
[docs/ARCHITECTURE.md](docs/ARCHITECTURE.md).

## Quick start (Mac)

```bash
# 1. Python env for the conductor (needs uv: https://docs.astral.sh/uv/)
uv sync --extra dev
uv run pytest

# 2. Upstream servers → vendor/ (or symlink your existing clones there)
scripts/fetch_upstream.sh

# 3. Watch the conductor's output with no apps running
cp config/av.example.toml config/av.toml      # set [targets.monitor] enabled = true
uv run av-osc-monitor --port 7499
```

Then open Claude Code in this folder — `.mcp.json` registers all three
servers. For Claude Desktop, merge
`config/claude_desktop_config.example.json` into its config (absolute paths).

In Max, open `patches/max/av_receiver.maxpat`; in Pd,
`patches/pd/av_receiver.pd`. Try:

> "Set the scene to section intro with energy 0.2, then ramp energy to 1 over 20 seconds."

## Layout

```
src/av_mcp/          av-conductor MCP server (scene, OSC targets, ramps, cues)
config/              av.example.toml (targets/ports/cues), Claude Desktop example
patches/max|pd/      OSC receiver patches → [r av-energy], [r av-section] …
visuals/             visual engine candidates + receiver sketches (TBD)
prompts/             prompt library
docs/                PLAN.md · ARCHITECTURE.md · LINUX_PORT.md
scripts/             fetch_upstream.sh
vendor/              upstream MCP servers (gitignored)
```

## Roadmap

[docs/PLAN.md](docs/PLAN.md): Phase 0 plumbing → 1 audio/control loop →
2 pick the visual engine → 3 performance tooling → 4 Linux port (Pd,
Ardour/SuperCollider, PipeWire, open-source visuals).

## Privacy note

`ableton-mcp` sends anonymous telemetry by default. The configs here set
`ABLETON_MCP_DISABLE_TELEMETRY=true` and `ABLETON_MCP_DISABLE_DATASET=true`.
