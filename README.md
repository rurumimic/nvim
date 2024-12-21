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

