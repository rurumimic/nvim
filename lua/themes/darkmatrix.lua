-- Name: Darkmatrix
-- URL: https://github.com/mbadolato/iTerm2-Color-Schemes

---@type Base46Table
local M = {}

M.base_30 = {
  white = "#90d762",
  black = "#070c0e",
  darker_black = "#040809",
  black2 = "#0d1517",
  one_bg = "#0f191c",
  one_bg2 = "#162226",
  one_bg3 = "#1d2b30",
  grey = "#404040",
  grey_fg = "#4a4a4a",
  grey_fg2 = "#454545",
  light_grey = "#505050",
  red = "#006536",
  baby_pink = "#46d8b8",
  pink = "#523a60",
  line = "#131d21",
  green = "#6fa64c",
  vibrant_green = "#90d762",
  nord_blue = "#12545a",
  blue = "#2c9a84",
  seablue = "#12545a",
  yellow = "#7e8000",
  sun = "#e2e500",
  purple = "#573d66",
  dark_purple = "#523a60",
  teal = "#2c9a84",
  orange = "#7e8000",
  cyan = "#46d8b8",
  statusline_bg = "#0d1517",
  lightbg = "#162226",
  pmenu_bg = "#2c9a84",
  folder_bg = "#2c9a84",
}

M.base_16 = {
  base00 = "#070c0e",
  base01 = "#0f191c",
  base02 = "#404040",
  base03 = "#404040",
  base04 = "#3e5715",
  base05 = "#3e5715",
  base06 = "#6fa64c",
  base07 = "#90d762",
  base08 = "#006536",
  base09 = "#7e8000",
  base0A = "#e2e500",
  base0B = "#6fa64c",
  base0C = "#2c9a84",
  base0D = "#00733d",
  base0E = "#573d66",
  base0F = "#12545a",
}

M.polish_hl = {
  defaults = {
    Comment = { fg = "#404040", italic = true },
    Cursor = { fg = "#00ff87", bg = "#9fa86e" },
    Search = { fg = "#070c0e", bg = "#e2e500" },
    IncSearch = { fg = "#070c0e", bg = "#e2e500" },
    Visual = { bg = "#0f191c" },
    MatchParen = { bg = "#404040" },
    ErrorMsg = { fg = "#006536" },
    WarningMsg = { fg = "#7e8000" },
    Title = { fg = "#523a60" },
    Directory = { fg = "#2c9a84" },
    SpellBad = { undercurl = true, sp = "#006536" },
    SpellCap = { undercurl = true, sp = "#2c9a84" },
    SpellRare = { undercurl = true, sp = "#523a60" },
    SpellLocal = { undercurl = true, sp = "#114d53" },
  },
  treesitter = {
    ["@variable"] = { fg = "#3e5715" },
    ["@string"] = { fg = "#6fa64c" },
    ["@function"] = { fg = "#2c9a84" },
    ["@keyword"] = { fg = "#00733d" },
    ["@operator"] = { fg = "#006536" },
    ["@type"] = { fg = "#90d762" },
    ["@constant"] = { fg = "#7e8000" },
    ["@number"] = { fg = "#7e8000" },
    ["@boolean"] = { fg = "#7e8000" },
    ["@include"] = { fg = "#573d66" },
    ["@tag"] = { fg = "#12545a" },
    ["@punctuation.delimiter"] = { fg = "#006536" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "darkmatrix")

return M
