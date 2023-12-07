local M = {}

local ReadLaunchJson = function()
  if vim.fn.filereadable(".vscode/launch.json") then
    require("dap.ext.vscode").load_launchjs(nil, {
      lldb = {"c", "cpp", "rust"},
      debugpy = {"python"},
    })
  end
end

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

    ["<F2>"] = { ToggleQuickFix, "Toggle Quickfix", opts = { nowait = true } },
    ["<F5>"] = { ":UndotreeToggle<CR>", "Toggle Undotree", opts = { nowait = true } },
    ["<F4>"] = { ":TagbarToggle<CR>", "Toggle Tagbar", opts = { nowait = true } },

    ["<C-u>"] = { "<C-u>zz", opts = { nowait = true } },
    ["<C-d>"] = { "<C-d>zz", opts = { nowait = true } },

    ["<leader>dc"] = { function() require('dap').continue() end, "DAP Continue" },
    ["<leader><Right>"] = { function() require('dap').step_over() end, "DAP Step Over" },
    ["<leader><Down>"] = { function() require('dap').step_into() end, "DAP Step Into" },
    ["<leader><Up>"] = { function() require('dap').step_out() end, "DAP Step Out" },
    ["<leader>dd"] = { function() require('dap').toggle_breakpoint() end, "DAP Breakpoint" },
    ["<leader>dr"] = { function() require('dap').repl.toggle() end, "DAP REPL Toggle" },
    ["<leader>dx"] = { function() require('dap').terminate() end, "DAP Terminate" },
    ["<leader>dC"] = { function() require('dap').run_last() end, "DAP Run Last" },

    ["<F3>"] = { function() require('dapui').toggle({}) end, "DAP UI" },
    ["<leader>de"] = { function() require('dapui').eval() end, "DAP Eval" },

    ["<leader>cp"] = { ":Copilot panel<enter>", "Copilot panel" },
  },
  v = {
    ["<leader>de"] = { function() require('dapui').eval() end, "DAP Eval" },
  }
}

return M

