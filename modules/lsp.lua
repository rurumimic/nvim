return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",

        -- "clangd",
        "clang-format",

        "gopls",
        "rust-analyzer",
        -- "zls",
        "pyright","black","isort",

        "markdownlint", "mdformat",

        -- "css-lsp",
        -- "html-lsp",
        -- "typescript-language-server",
        -- "deno",
        -- "prettier"
      }
    },
  },
  {
   "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",

        "c",
        "cpp",

        "go",
        "rust",
        -- "zig",

        "python",

        "markdown",
        "markdown_inline",

        -- "html",
        -- "css",
        -- "javascript",
        -- "typescript",
        -- "tsx",
      },
      indent = {
        enable = true,
        -- disable = {
        --   "python"
        -- }
      },
    },
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    "preservim/tagbar",
    lazy = false,
  },
  {
    "vim-scripts/gtags.vim",
    keys = {
      { "<leader>fg", ":Gtags<space>", desc = "Gtags Find" },
      { "<leader>fc", "<cmd>:GtagsCursor<cr>", desc = "Gtags Cursor" },
      { "<leader>fn", "<cmd>:cn<cr>", desc = "Gtag Next" },
      { "<leader>fp", "<cmd>:cp<cr>", desc = "Gtag Prev" },
    },
  },
}
