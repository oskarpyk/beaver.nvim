# Beaver.nvim

This is my personal Neovim configuration. It's a straightforward setup that provides a good balance of features and performance.

## Features

- Catppuccin theme with transparent background
- Code completion and LSP via CoC
- Space as leader key with intuitive shortcuts
- Git integration with Fugitive
- File navigation with NvimTree
- Telescope for fuzzy finding
- Custom task management integration
- AI-powered assistance with ChatGPT and Copilot

## Installation

### Prerequisites

- Neovim 0.7.0+
- Git
- Node.js (for CoC)
- Ripgrep (for Telescope)

### Setup

1. Back up your existing Neovim configuration if you have one:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

2. Clone this repository:

```bash
git clone https://github.com/username/beaver.nvim ~/.config/nvim
```

3. Install plugins on first run:

```bash
nvim +PlugInstall +qall
```

## Key Mappings

Here are some of the most useful key mappings:

- `<Space>j` - Save file
- `<Space>q` - Quit
- `<Space>ff` - Find files (Telescope)
- `<Space>fn` - Find in files (Telescope)
- `<Space>h` - Toggle file explorer (NvimTree)
- `<Space>gs` - Git status (Fugitive)

Check the `init.vim` file for the complete list of mappings.

## Customization

Feel free to modify any file to suit your preferences. The main files are:

- `init.vim` - Main configuration file
- `plugins.vim` - Plugin list and settings
- `coc-settings.json` - Language server settings

## License

MIT