local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<F5>"] = { ":UndotreeToggle<CR>", "Toggle Undotree", opts = { nowait = true } },
    ["<F8>"] = { ":TagbarToggle<CR>", "Toggle Tagbar", opts = { nowait = true } },

    ["<C-u>"] = { "<C-u>zz", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", opts = { nowait = true } },
  },
}

return M

