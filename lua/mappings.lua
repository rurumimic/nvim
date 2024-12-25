require "nvchad.mappings"

local map = vim.keymap.set

-- Leader
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> noautocmd w <cr>", { desc = "general Save file without formatting" })

-- Window navigation
map("n", "<C-u>", "<C-u>zz", { nowait = true, desc = "Page Up" })
map("n", "<C-d>", "<C-d>zz", { nowait = true, desc = "Page Down" })

-- LSP
map("n", "gl", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics under the cursor" })

-- Copilot
-- stylua: ignore
map("i", "<M-C-CR>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, desc = "Copilot accept suggestion" })

-- Tagbar
map("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial" })
