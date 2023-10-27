local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local configs = require 'lspconfig.configs'

-- if you just want default config for the servers then put them in a table
local servers = {
  "lua_ls",
  "gopls",
  "pyright",

  -- "clangd",
  -- "rust_analyzer",
  -- "zls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {
    "clangd",
    "--offset-encoding=utf-16",
    "--limit-references=0",
  }
}

lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
      ["rust-analyzer"] = {
          imports = {
              granularity = {
                  group = "module",
              },
              prefix = "self",
          },
          cargo = {
              buildScripts = {
                  enable = true,
              },
          },
          procMacro = {
              enable = true
          },
      }
  }
}

-- if not configs.postgres_lsp then
--   configs.postgres_lsp = {
--     default_config = {
--       name = 'postgres_lsp',
--       cmd = { 'postgres_lsp' },
--       filetypes = { 'sql' },
--       single_file_support = true,
--       root_dir = lspconfig.util.root_pattern 'root-file.txt'
--     },
--   }
-- end
--
-- lspconfig.postgres_lsp.setup{}

