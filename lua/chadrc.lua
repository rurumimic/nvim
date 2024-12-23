-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

local hl_override = {
  Comment = { italic = true },
  ["@comment"] = { italic = true },
}

local hl_add = {
  NvimTreeOpenedFolderName = {
    fg = "green",
    bold = true,
  },
}

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "gruvchad",

  hl_override = hl_override,
  hl_add = hl_add,
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "default",
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
