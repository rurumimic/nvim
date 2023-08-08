local M = {}

local ToggleQuickFix = function()
  local qf_exists = false
  for _, win in pairs(vim.fn.getwininfo()) do
    if win["quickfix"] == 1 then
      qf_exists = true
    end
  end
  if qf_exists == true then
    vim.cmd "cclose"
    return
  end
  if not vim.tbl_isempty(vim.fn.getqflist()) then
    vim.cmd "copen"
  end
end

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<F3>"] = { ToggleQuickFix, "Toggle Quickfix", opts = { nowait = true } },
    ["<F5>"] = { ":UndotreeToggle<CR>", "Toggle Undotree", opts = { nowait = true } },
    ["<F8>"] = { ":TagbarToggle<CR>", "Toggle Tagbar", opts = { nowait = true } },

    ["<C-u>"] = { "<C-u>zz", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", opts = { nowait = true } },
  },
}

return M

