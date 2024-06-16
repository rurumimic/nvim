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

        "asm-lsp",

        -- "clangd",
        "clang-format",

        "rust-analyzer",
        -- "lldb-vscode", -- already installed by LLVM

        "gopls",
        -- "zls",

        "pyright","black","isort",
        "debugpy",

        "markdownlint", "mdformat",

        "css-lsp",
        "html-lsp",
        -- "typescript-language-server",
        "deno",
        "prettier",

        "shfmt",

        "solidity", "solidity-ls",
        "nomicfoundation-solidity-language-server",

        "haskell-language-server"
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
        "cuda",

        "rust",

        "go",
        -- "zig",

        "python",

        "markdown",
        "markdown_inline",

        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",

        "bash",

        "solidity",

        "haskell"
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
    config = function()
      local dap = require('dap')
      dap.adapters.lldb = {
        type = 'executable',
        command = '/usr/bin/lldb-vscode',
        name = 'lldb'
      }
      dap.configurations.cpp = {
        {
          name = 'Launch',
          type = 'lldb',
          request = 'launch',
          program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
          end,
          cwd = '${workspaceFolder}',
          stopOnEntry = false,
          args = function()
            local args_string = vim.fn.input("Input arguments: ")
            return vim.split(args_string, " ")
          end,
          env = function()
            local variables = {}
            for k, v in pairs(vim.fn.environ()) do
              table.insert(variables, string.format("%s=%s", k, v))
            end
            return variables
          end,
        }
      }
      dap.configurations.c = dap.configurations.cpp
      dap.configurations.rust = {
          {
            name = 'Launch',
            type = 'lldb',
            request = 'launch',
            program = function()
              return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/target/debug/', 'file')
            end,
            cwd = '${workspaceFolder}',
            stopOnEntry = false,
            args = {},
            initCommands = function()
              -- Find out where to look for the pretty printer Python module
              local rustc_sysroot = vim.fn.trim(vim.fn.system('rustc --print sysroot'))

              local script_import = 'command script import "' .. rustc_sysroot .. '/lib/rustlib/etc/lldb_lookup.py"'
              local commands_file = rustc_sysroot .. '/lib/rustlib/etc/lldb_commands'

              local commands = {}
              local file = io.open(commands_file, 'r')
              if file then
                for line in file:lines() do
                  table.insert(commands, line)
                end
                file:close()
              end
              table.insert(commands, 1, script_import)

              return commands
            end,
            env = function()
              local variables = {}
              for k, v in pairs(vim.fn.environ()) do
                table.insert(variables, string.format("%s=%s", k, v))
              end
              return variables
            end,
          }
        }
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = {
      "mfussenegger/nvim-dap",
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
