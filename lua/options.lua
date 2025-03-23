require "nvchad.options"

local g = vim.g
local o = vim.o

g.copilot_no_tab_map = true -- disable tab mapping for copilot

o.autowrite = true -- automatically write before running commands
o.conceallevel = 0 -- so that `` is visible in markdown files
o.confirm = true -- confirm before closing unsaved buffers
o.cursorlineopt = "both" -- highlight the current line
o.formatoptions = "jcroqlnt" -- see :h fo-table
o.grepprg = "rg --vimgrep"
-- stylua: ignore
o.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
o.list = true -- show some invisible characters
o.pumblend = 10 -- completion menu transparency
o.pumheight = 10 -- completion menu height
o.relativenumber = true
o.wildmode = "longest:full,full" -- command-line completion mode
o.wrap = false

require("configs.providers.python").setup()
