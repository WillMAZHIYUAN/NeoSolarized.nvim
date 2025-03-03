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
    a = { bg = palette.real_orange, fg = palette.bg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  visual = {
    a = { bg = palette.blue, fg = palette.bg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  replace = {
    a = { bg = palette.real_yellow, fg = palette.bg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  command = {
    a = { bg = palette.purple, fg = palette.bg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  terminal = {
    a = { bg = palette.aqua, fg = palette.bg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
  inactive = {
    a = { bg = palette.bg0, fg = palette.fg0, gui = 'bold' },
    b = { bg = palette.none, fg = palette.fg0 },
    c = { bg = palette.none, fg = palette.fg0 },
  },
}

return theme
