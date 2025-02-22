# 🖌 NeoSolarized

这是一个 Fork 后更改配色自用的项目

## 🔥 Features

- supports the latest Neovim 5.0 features like TreeSitter and LSP
- better syntax highlighting
- color configs for
  [`Kitty`](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include),
  [`Alacritty`](https://github.com/alacritty/alacritty), 
  [`Konsole`](https://konsole.kde.org/) and
  [`Wezterm`](https://github.com/wez/wezterm)
- **`lualine`** theme

### 🧨 Plugin Support

- [Barbar](https://github.com/romgrk/barbar.nvim)
- [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
- [Dashboard](https://github.com/glepnir/dashboard-nvim)
- [Fern](https://github.com/lambdalisue/fern.vim)
- [Git Gutter](https://github.com/airblade/vim-gitgutter)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
- [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
- [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
- [Lualine](https://github.com/hoob3rt/lualine.nvim)
- [Mini](https://github.com/echasnovski/mini.nvim)
- [Neogit](https://github.com/TimUntersberger/neogit)
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [NvimTree](https://github.com/nvim-tree/nvim-tree.lua)
- [Scrollbar](https://github.com/petertriho/nvim-scrollbar)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [WhichKey](https://github.com/liuchengxu/vim-which-key)
- [vim-sneak](https://github.com/justinmk/vim-sneak)

## ⚡️ Requirements

- Neovim >= 0.6.0

## 💡 Installation

#### [`lazy.nvim`](https://github.com/folke/lazy.nvim)

```lua
{
  "WillMAZHIYUAN/NeoSolarized.nvim",
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd [[ colorscheme NeoSolarized ]]
    end
}
```

## ✨ Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme NeoSolarized
```

```lua
-- Lua
vim.cmd[[colorscheme NeoSolarized]]
```

To use the `NeoSolarized` theme for `Lualine`, simply specify it in your
lualine settings:

```lua
require('lualine').setup {
  options = {
    theme = 'NeoSolarized'
    -- ... your lualine config
  }
}
```

## ⚙️ Configuration

> ⚠️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme NeoSolarized`

The theme comes in two styles, `light` and `dark`.

NeoSolarized will use the default options, unless you call `setup`.
Here an example to set things up using default options.

```lua
local ok_status, NeoSolarized = pcall(require, "NeoSolarized")

if not ok_status then
  return
end

-- Default Setting for NeoSolarized

NeoSolarized.setup {
  style = "dark", -- "dark" or "light"
  transparent = true, -- true/false; Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  enable_italics = true, -- Italics for different hightlight groups (eg. Statement, Condition, Comment, Include, etc.)
  styles = {
    -- Style to be applied to different syntax groups
    comments = { italic = true },
    keywords = { italic = true },
    functions = { bold = true },
    variables = {},
    string = { italic = true },
    underline = true, -- true/false; for global underline
    undercurl = true, -- true/false; for global undercurl
  },
  -- Add specific hightlight groups
  on_highlights = function(highlights, colors) 
    -- highlights.Include.fg = colors.red -- Using `red` foreground for Includes
  end, 
}
-- Set colorscheme to NeoSolarized
vim.cmd [[
    try
        colorscheme NeoSolarized
    catch /^Vim\%((\a\+)\)\=:E18o
        colorscheme default
        set background=dark
    endtry
]]
```
> **NOTE** that you can not use transparency with `light` mode.

## ❣️ Extras

Extra color configs for **Kitty**, **Alacritty**, **Wezterm** and **Konsole**
can be found in [extras](extras/). To use them, refer to
their respective documentation.
