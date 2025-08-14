local nvlsp = require "nvchad.configs.lspconfig"

local M = {
  on_attach = nvlsp.on_attach,
  capabilities = nvlsp.capabilities,
  cmd = {
    "clangd",
    "-j=12", -- nproc
    "--clang-tidy",
    "--background-index",
    "--offset-encoding=utf-16",
    "--limit-references=0",
    "--header-insertion=iwyu",
    "--completion-style=detailed",
    "--function-arg-placeholders=true",
    "--fallback-style=google",
  },
}

return M
