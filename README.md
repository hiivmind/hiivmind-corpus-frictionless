# Frictionless Framework Documentation Corpus

A Claude Code plugin providing always-current access to Frictionless Framework documentation with intelligent navigation.

## Features

- **Indexed Navigation**: Structured index of all Frictionless Framework documentation with summaries, key concepts, and cross-references
- **Automatic Updates**: Incremental index updates from upstream documentation changes
- **Smart Matching**: Finds relevant docs based on concepts, summaries, and section headings

## Installation

### As a Plugin

```bash
# Add the marketplace containing this plugin
/plugin marketplace add hiivmind/hiivmind-corpus-frictionless

# Install the plugin
/plugin install hiivmind-corpus-frictionless

# Restart Claude Code
```

### Manual Installation

Clone this repository to your Claude Code plugins directory.

## First-Time Setup

After installing, use the `hiivmind-corpus-build` skill to build the index:

```
Please build the Frictionless Framework documentation index
```

This requires the `hiivmind-corpus` meta-plugin to be installed.

## Maintenance Skills

This corpus is managed by **hiivmind-corpus** skills:

| Skill | Purpose |
|-------|---------|
| `hiivmind-corpus-add-source` | Add new documentation sources |
| `hiivmind-corpus-build` | Build/rebuild the documentation index |
| `hiivmind-corpus-enhance` | Deepen coverage on specific topics |
| `hiivmind-corpus-refresh` | Update index from upstream changes |

## Usage

### Automatic Navigation

The navigation skill is model-invoked. Simply ask questions about Frictionless Framework:

```
How do I validate a CSV file with frictionless?
What is a Resource in frictionless?
How do I transform data using frictionless?
```

Claude will automatically find and cite relevant documentation.

### Index Updates

Refresh from upstream changes (uses `hiivmind-corpus-refresh`):

```
Refresh the Frictionless Framework corpus from upstream
```

Full rebuild (uses `hiivmind-corpus-build`):

```
Rebuild the Frictionless Framework documentation index from scratch
```

Enhance a specific topic (uses `hiivmind-corpus-enhance`):

```
Add more detail about validation to the Frictionless Framework index
```

## Skills

### hiivmind-corpus-frictionless-navigate

Finds relevant documentation for Frictionless Framework-related coding tasks. Automatically invoked when you ask about:

- Data validation and schemas
- Resource and Package definitions
- Data extraction and transformation
- CSV, JSON, and other format handling

## File Structure

```
hiivmind-corpus-frictionless/
├── .claude-plugin/
│   └── plugin.json           # Plugin manifest
├── skills/
│   └── navigate/
│       └── SKILL.md          # Documentation navigation
├── commands/
│   └── navigate.md           # Explicit navigation command
├── data/
│   ├── config.yaml           # Source repo + settings
│   └── index.md              # Generated documentation index
├── .source/                  # Cloned docs repo (gitignored)
└── README.md
```

## Configuration

The `data/config.yaml` and `data/index.md` files are managed by hiivmind-corpus skills. Do not edit them manually.

To add new sources, use `hiivmind-corpus-add-source`. To rebuild or enhance the index, use `hiivmind-corpus-build` or `hiivmind-corpus-enhance`.

## Requirements

- `hiivmind-corpus` meta-plugin installed (provides maintenance skills)
- Git (for cloning and updating documentation)
- Claude Code with plugin support

## License

MIT
