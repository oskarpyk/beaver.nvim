# 🦫 Beaver.nvim Quick Start Guide

Welcome to your new Beaver.nvim setup! Here's a visual guide to help you get started.

## Core Commands

```
┌─────────────────────────────────────┐
│  <Space>                Leader Key   │
├─────────────────────────────────────┤
│  <Space>j              Save File     │
│  <Space>q              Quit          │
│  <Space>ff             Find Files    │
│  <Space>fn             Search in Files│
│  <Space>h              File Explorer │
│  <Space>gs             Git Status    │
└─────────────────────────────────────┘
```

## Navigation

```
┌─────────────────────────────────────┐
│  <C-h>                 Window Left   │
│  <C-j>                 Window Down   │
│  <C-k>                 Window Up     │
│  <C-l>                 Window Right  │
├─────────────────────────────────────┤
│  <Space>t              New Tab       │
│  <Space><Tab>          Next Tab      │
└─────────────────────────────────────┘
```

## Coding

```
┌─────────────────────────────────────┐
│  gd                   Go to Definition│
│  K                    Show Documentation│
│  <F2>                 Rename Symbol  │
│  <Space>f             Format Code    │
└─────────────────────────────────────┘
```

## Tips for New Beavers

1. **Plugin Installation**: If you see errors about missing plugins, run `:PlugInstall`

2. **CoC Extensions**: Some language servers will install automatically, others may need manual installation with `:CocInstall <extension-name>`

3. **Colorscheme**: If the colorscheme doesn't look right, check your terminal's support for true colors

4. **Task Management**: Create new tasks with `:MakeTask <task description>` and link existing tasks with `:LinkTask`

5. **Customize**: Make this your own by editing the files in `~/.config/nvim/`

Happy dam building! 🦫