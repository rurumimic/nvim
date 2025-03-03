local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    c = { "clang-format" },
    cpp = { "clang-format" },
    rust = { "rustfmt" },
    go = { "gofmt" },
    -- css = { "prettier" },
    -- html = { "prettier" },
    ["*"] = { "codespell" },
    ["_"] = { "trim_whitespace" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },

  formatters = {
    codespell = {
      prepend_args = { "-L", "crate" },
    },
  },
}

return options
