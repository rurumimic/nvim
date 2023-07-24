# Neovim

- [NvChad](https://github.com/NvChad/NvChad) Custom
   - [basic config](https://github.com/NvChad/basic-config)
   - [example config](https://github.com/NvChad/example_config/tree/v1.0)

## Update NvChad

```bash
:NvChadUpdate
```

## My Custom Configurations

```bash
rm -rf ~/.config/nvim/lua/custom
git clone https://github.com/rurumimic/nvim ~/.config/nvim/lua/custom --depth 1 
git fetch && git pull
```

```bash
~/.config/nvim/                  # NvChad/NvChad
├── LICENSE
├── init.lua
├── lazy-lock.json
└── lua/
    ├── core/
    │   ├── bootstrap.lua
    │   ├── default_config.lua
    │   ├── init.lua
    │   ├── mappings.lua
    │   └── utils.lua
    ├── custom/                  # rurumimic/nvim
    │   ├── README.md
    │   └── chadrc.lua
    └── plugins/
        ├── configs/
        │   ├── cmp.lua
        │   ├── lazy_nvim.lua
        │   ├── lspconfig.lua
        │   ├── mason.lua
        │   ├── nvimtree.lua
        │   ├── others.lua
        │   ├── telescope.lua
        │   └── treesitter.lua
        └── init.lua
```

