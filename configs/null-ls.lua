local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt,
  b.formatting.prettier.with { filetypes = { "javascript", "typescript", "html", "markdown", "css" } },

  b.formatting.stylua,
  b.formatting.clang_format,
  b.formatting.gofmt,
  b.formatting.rustfmt,
  b.formatting.black,
  b.formatting.isort,
  b.formatting.mdformat,
  b.formatting.shfmt,
  b.formatting.ocamlformat,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
