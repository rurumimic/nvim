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
        "debugpy",

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
    "mfussenegger/nvim-dap",
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    config = function()
      require("mason").setup()
      require("mason-nvim-dap").setup({
        ensure_installed = {
          "python",
        },
        automatic_installation = true,
        handlers = {
          function(config)
            require('mason-nvim-dap').default_setup(config)
          end,
        },
      })
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "jay-babu/mason-nvim-dap.nvim",
    },
    ft = { "python" },
    config = function(plugin, opts)
      local runtime = vim.fn.stdpath('data') .. '/mason/packages/debugpy/venv/bin/python'
      require('dap-python').setup(runtime)
    end,
    opts = function(_, opts)
      -- table.insert(require("dap").configurations.python, {
      -- })
    end,
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function(_, opts)
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup(opts)
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close({})
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close({})
      end
    end,
  },
  {
    "theHamsta/nvim-dap-virtual-text",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function()
      require("nvim-dap-virtual-text").setup()
    end,
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
  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
      { "<leader>lx", function() require("trouble").open() end, desc = "Trouble Open" },
      { "<leader>lw", function() require("trouble").open("workspace_diagnostics") end, desc = "Trouble Workspace" },
      { "<leader>ld", function() require("trouble").open("document_diagnostics") end, desc = "Trouble Document" },
      { "<leader>lq", function() require("trouble").open("quickfix") end, desc = "Trouble Quickfix" },
      { "<leader>ll", function() require("trouble").open("loclist") end, desc = "Trouble loclist" },
      { "<leader>ln", function() require("trouble").next({skip_groups=true, jump=true}) end, desc = "Trouble Next" },
      { "<leader>lp", function() require("trouble").previous({skip_groups=true, jump=true}) end, desc = "Trouble Prev" },
      { "gR", function() require("trouble").open("lsp_references") end, desc = "Trouble LSP References" },
    },
  }
}
