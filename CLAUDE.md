# Notes for Claude

- Three-plane rule (docs/ARCHITECTURE.md): MCP tools never sit in the beat/frame loop.
  If a feature needs per-frame timing, it belongs in Max/Pd/the visual engine, not the conductor.
- `av-conductor` must stay program-agnostic: scene fields are semantic (energy, section, palette).
  Program-specific messages go through `send_osc` or the upstream servers.
- Don't modify `vendor/` — those are upstream repos. Wrap or configure them instead.
- New transports (WebSocket, MIDI) = a new `Target` in `src/av_mcp/adapters/`.
- Run `uv run pytest` before committing. Tests must not need Live, Max or Pd running.
- MCP stdio servers: log to stderr only, never print to stdout.
