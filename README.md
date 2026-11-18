# Yourbit Homebrew Tap

Official Homebrew tap for [NotiBuddy](https://notibuddy.app/setup) CLI and MCP tools.

## Install

```bash
brew install yourbit-network/tap/notibuddy
```

Or tap first and install:

```bash
brew tap yourbit-network/tap
brew install notibuddy
```

In a `Brewfile`:

```ruby
tap "yourbit-network/tap"
brew "notibuddy"
```

## Upgrade

```bash
brew update
brew upgrade notibuddy
```

## Binaries & MCP Usage

This formula installs:

- `notibuddy` and `nb` — NotiBuddy CLI
- `notibuddy-mcp` — Local stdio MCP server

In MCP client configs (`claude_desktop_config.json`, Cursor, etc.), you can invoke the installed server directly:

```json
{
  "mcpServers": {
    "notibuddy": {
      "command": "notibuddy-mcp",
      "args": ["--to", "personal", "--sender", "Coding assistant"]
    }
  }
}
```
