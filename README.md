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

## NvChad

- [NvChad](https://github.com/NvChad/NvChad) v2.5
  - [starter](https://github.com/NvChad/starter)
  - [tinyvim](https://github.com/NvChad/tinyvim)

### LSP

- nvchad: [lsp](https://nvchad.com/docs/config/lsp)

```bash
vi ~/.config/nvim/lua/configs/lspconfig.lua
```

```lua
local servers = {
    "html",
    "cssls"
}
```

Run:

```vim
:MasonInstallAll
```

