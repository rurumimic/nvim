local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<F8>"] = { ":TagbarToggle<CR>", "Toggle Tagbar", opts = { nowait = true } },
  },
}

return M

