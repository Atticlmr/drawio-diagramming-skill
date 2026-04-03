# Draw.io Diagram Skill

Create professional diagrams using Draw.io (diagrams.net) native XML format.

## Prerequisites

**Install Draw.io MCP Server first:**

```bash
# For OpenCode
opencode mcp add drawio npx -y @simonw/drawio-mcp

# For Kimi CLI
kimi mcp add drawio npx -y @simonw/drawio-mcp
```

## Installation

### OpenCode

```bash
./install.sh
```

### Kimi CLI

```bash
./install-kimi.sh
```

## Features

- Native Draw.io XML format
- Mermaid syntax support
- ISO color standards
- Mathematical formulas with Greek symbols (π, μ, σ, etc.)
- Flow direction control (top-down, left-right, bidirectional)

## Directory Structure

```
.
├── SKILL.md              # OpenCode compatible
├── kimi-compatible/      # Kimi CLI compatible
├── install.sh            # OpenCode installer
├── install-kimi.sh       # Kimi CLI installer
├── examples/             # Example diagrams
└── references/           # Reference materials
```

## License

MIT
