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

        "clangd",
        "clang-format",

        "gopls",
        "rust-analyzer",
        "zls",
        "pyright",

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
        "zig",

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
    "mhartington/formatter.nvim",
    config = function()
      local util = require "formatter.util"
      require("formatter").setup {
        logging = true,
        log_level = vim.log.levels.WARN,
        filetype = {
          lua = require("formatter.filetypes.lua").stylua,
          c = require("formatter.defaults.clangformat"),
          cpp = require("formatter.defaults.clangformat"),
          ["*"] = {
            require("formatter.filetypes.any").remove_trailing_whitespace,
          },
        },
      }
    end,
  }
}
