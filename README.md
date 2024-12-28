# Neovim

## Setup

```bash
git clone https://github.com/rurumimic/nvim ~/.config/nvim
```

### Alias vi

```bash
alias vi='nvim'
```

### Run Neovim

```bash
vi
```

#### Install plugins

```vim
:MasonInstallAll
```

### Prerequisites

#### Install Packages

- neovim
- node.js
- nerd font
- ripgrep
- gcc
- make

#### Clean old neovim folders

```bash
rm -rf ~/.config/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.local/share/nvim
```

---

## Key Mappings

- Cheatsheets: `<leader>ch`

### General

- Save file without formatting: `<C-s>`
- Opens the current filepath or URL: `gx`

### Terminals

- New horizontal: `<leader>h`
- New vertical: `<leader>v`
- Toggle horizontal: `<M-h>`
- Toggle vertical: `<M-v>`
- Toggle floating: `<M-i>`

### Tree

- Toggle: `<C-n>`
- Focus: `<leader>e`

### Formatters

- Format file: `<leader>fm`

### LSP

- Diagnostic under the cursor: `<C-W><C-D>`, `<C-W>d`, `<leader>gl`, `gl`
- Diagnostic loclist: `<leader> + ds`
- To the previous diagnostic: `[d`
- To the next diagnostic: `]d`

### Git

- Fugitive: `<leader>gf`

### Telescope

- Live grep: `<leader>fw`
- Find files: `<leader>ff`
- Find in current buffer: `<leader>fz`
- Find buffers: `<leader>fb`
- Find oldfiles: `<leader>fo`
- Find help: `<leader>fh`
- Pick a terminal: `<leader>pt`
- Git status: `<leader>gt`
- Git commits: `<leader>cm`

#### in Telescope window

- Send items to quicfixlist with Trouble: `<C-q>`

### Trouble

- Toggle diagnostics: `<leader>tl`
- Toggle diagnostics (current buffer): `<leader>tL`
- Toggle symbols: `<leader>ts`
- Toggle LSP references: `<leader>tr`
- Toggle quickfix: `<leader>tq` (like `:vim /pattern/ %`)
- Toggle loclist: `<leader>tc` (like `:lv /pattern/ %`)

### Copilot

- Next suggestion: `<M-]>`
- Previous suggestion: `<M-[>`
- Accept word: `<M-Right>`
- Accept line: `<M-C-Right>`
- Accept suggestion: `<M-C-Enter>`
- Dismiss suggestion: `<C-]>`

---

## Languages

src: [lua/configs/lspconfig.lua](lua/configs/lspconfig.lua), [lua/configs/conform.lua](lua/configs/conform.lua)

- c, cpp, cuda: clangd, clang-format
- rust: rust-analyzer, rustfmt

---

## NvChad

- [NvChad](https://github.com/NvChad/NvChad) v2.5
  - [starter](https://github.com/NvChad/starter)
  - [tinyvim](https://github.com/NvChad/tinyvim)

### LSP

- nvchad: [lsp](https://nvchad.com/docs/config/lsp)

#### with default config

`~/.config/nvim/lua/configs/lspconfig.lua`:

```lua
local servers = {
    "html",
    "cssls",
}
```

#### with custom config

`~/.config/nvim/lua/configs/lsp/rust.lua`:

```lua
local nvlsp = require "nvchad.configs.lspconfig"

local M = {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  settings = {
    -- ...
  },
}

return M
```

`~/.config/nvim/lua/configs/lspconfig.lua`:

```lua
lspconfig.rust_analyzer.setup(require "configs.lsp.rust")
```

### Formatters

`~/.config/nvim/lua/configs/conform.lua`:

```lua
local options = {
  formatters_by_ft = {
    rust = { "rustfmt" },
  },
}

return options
```

### Install all plugins

```vim
:MasonInstallAll
```

