local M = {}

M.setup = function()
  local venv = vim.fn.stdpath "config" .. "/.venv/bin/python"

  if vim.fn.filereadable(venv) == 1 then
    vim.g.python3_host_prog = venv
    vim.g.loaded_python3_provider = nil
  end
end

return M
