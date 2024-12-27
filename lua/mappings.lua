require "nvchad.mappings"

local map = vim.keymap.set

-- stylua: ignore start

-- Leader
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> noautocmd w <cr>", { desc = "general Save file without formatting" })

-- Window navigation
map("n", "<C-u>", "<C-u>zz", { nowait = true, desc = "Page Up" })
map("n", "<C-d>", "<C-d>zz", { nowait = true, desc = "Page Down" })

-- Git
map("n", "<leader>gf", "<cmd>G<cr>", { desc = "Fugitive" })

-- LSP
map("n", "gl", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics under the cursor" })
map("n", "<leader>gl", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Show diagnostics under the cursor" })

-- Copilot
map("i", "<M-C-CR>", 'copilot#Accept("\\<CR>")', { expr = true, replace_keycodes = false, desc = "Copilot accept suggestion" })

-- Tagbar
map("n", "<leader>a", "<cmd>AerialToggle!<CR>", { desc = "Toggle Aerial" })

-- Trouble
map("n", "<leader>tl", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>tL", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer Diagnostics (Trouble)" })
map("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", { desc = "Symbols (Trouble)" })
map("n", "<leader>tr", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", { desc = "LSP Definitions / references / ... (Trouble)" })
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Quickfix List (Trouble)" })
map("n", "<leader>tc", "<cmd>Trouble loclist toggle<cr>", { desc = "Location List (Trouble)" })

-- stylua: ignore end
