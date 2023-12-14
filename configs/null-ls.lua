local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes

  b.formatting.stylua,
  b.formatting.clang_format,
  b.formatting.gofmt,
  b.formatting.rustfmt,
  b.formatting.black,
  b.formatting.isort,
  b.formatting.mdformat,
  b.formatting.shfmt,
  b.formatting.asmfmt,

}

null_ls.setup {
  debug = true,
  sources = sources,
}

