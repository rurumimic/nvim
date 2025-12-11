-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local servers = { "lua_ls", "html", "cssls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
end
vim.lsp.enable(servers)

vim.lsp.config("clangd", { require "configs.lsp.c" })
-- vim.lsp.config("rust_analyzer", { require "configs.lsp.rust" })
vim.lsp.config("gopls", {})
vim.lsp.config("pbls", {})

-- vim.lsp.enable { "clangd", "rust_analyzer", "gopls", "pbls" }
vim.lsp.enable { "clangd", "gopls", "pbls" }

-- configuring single server, example: typescript
-- vim.lsp.config("ts_ls", {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- })
