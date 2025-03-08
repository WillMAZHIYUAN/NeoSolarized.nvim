local light = require("NeoSolarized.config").is_day()
local palette = require("NeoSolarized.colors").dark

if light then
  palette = require("NeoSolarized.colors").light
end

local theme = {}

theme = {
  normal = {
    a = { bg = palette.none, fg = palette.real_green, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  insert = {
    a = { fg = palette.real_orange, bg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  visual = {
    a = { fg = palette.cyan, bg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  replace = {
    a = { fg = palette.real_yellow, bg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  command = {
    a = { fg = palette.purple, bg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  terminal = {
    a = { fg = palette.aqua, bg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  inactive = {
    a = { bg = palette.none, fg = palette.none, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
}

return theme
