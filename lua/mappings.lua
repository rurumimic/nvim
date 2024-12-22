require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-u>", "<C-u>zz", { nowait = true, desc = "Page Up" })
map("n", "<C-d>", "<C-d>zz", { nowait = true, desc = "Page Down" })

map("n", "gl", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics under cursor" })
