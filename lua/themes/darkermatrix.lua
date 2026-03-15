-- Name: Darkermatrix
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
  red = "#1a4831",
  baby_pink = "#00ff87",
  pink = "#4e375a",
  line = "#131d21",
  green = "#6fa64c",
  vibrant_green = "#90d762",
  nord_blue = "#176c73",
  blue = "#00cb6b",
  seablue = "#176c73",
  yellow = "#595900",
  sun = "#e2e500",
  purple = "#4e375a",
  dark_purple = "#4e375a",
  teal = "#00cb6b",
  orange = "#595900",
  cyan = "#00ff87",
  statusline_bg = "#0d1517",
  lightbg = "#162226",
  pmenu_bg = "#00cb6b",
  folder_bg = "#00cb6b",
}

M.base_16 = {
  base00 = "#070c0e",
  base01 = "#0f191c",
  base02 = "#404040",
  base03 = "#404040",
  base04 = "#35451a",
  base05 = "#35451a",
  base06 = "#6fa64c",
  base07 = "#90d762",
  base08 = "#1a4831",
  base09 = "#595900",
  base0A = "#e2e500",
  base0B = "#6fa64c",
  base0C = "#00cb6b",
  base0D = "#0d452a",
  base0E = "#4e375a",
  base0F = "#176c73",
}

M.polish_hl = {
  defaults = {
    Comment = { fg = "#404040", italic = true },
    Cursor = { fg = "#00ff87", bg = "#444733" },
    Search = { fg = "#070c0e", bg = "#e2e500" },
    IncSearch = { fg = "#070c0e", bg = "#e2e500" },
    Visual = { bg = "#0f191c" },
    MatchParen = { bg = "#404040" },
    ErrorMsg = { fg = "#1a4831" },
    WarningMsg = { fg = "#595900" },
    Title = { fg = "#4e375a" },
    Directory = { fg = "#00cb6b" },
    SpellBad = { undercurl = true, sp = "#1a4831" },
    SpellCap = { undercurl = true, sp = "#00cb6b" },
    SpellRare = { undercurl = true, sp = "#4e375a" },
    SpellLocal = { undercurl = true, sp = "#125459" },
  },
  treesitter = {
    ["@variable"] = { fg = "#35451a" },
    ["@string"] = { fg = "#6fa64c" },
    ["@function"] = { fg = "#00cb6b" },
    ["@keyword"] = { fg = "#0d452a" },
    ["@operator"] = { fg = "#1a4833" },
    ["@type"] = { fg = "#90d762" },
    ["@constant"] = { fg = "#595900" },
    ["@number"] = { fg = "#595900" },
    ["@boolean"] = { fg = "#595900" },
    ["@include"] = { fg = "#4e375a" },
    ["@tag"] = { fg = "#176c73" },
    ["@punctuation.delimiter"] = { fg = "#1a4833" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "darkermatrix")

return M
