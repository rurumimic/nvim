local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
-- local configs = require 'lspconfig.configs'

-- if you just want default config for the servers then put them in a table
local servers = {
  "lua_ls",
  "clangd",
  "gopls",
  "rust_analyzer",
  -- "zls",
  "pyright",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

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
--
