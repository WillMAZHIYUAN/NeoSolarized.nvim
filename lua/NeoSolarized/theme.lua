local colors = require("NeoSolarized.colors")

local M = {}
function M.setup()
  local config = require("NeoSolarized.config")
  local options = config.options
  local theme = {
    config = options, colors = colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {
    ColorColumn                              = { bg = c.bg1 },                                  -- used for the columns set with 'colorcolumn'
    Comment                                  = { fg = c.hide_color, bg = c.none, style = options.styles.comments }, -- any comment
    Conceal                                  = { fg = c.bg1 },                                  -- placeholder characters substituted for concealed text (see 'conceallevel')
    CurSearch                                = { fg = c.black, bg = c.real_orange },
    Search                                   = { fg = c.cyan, underline = true },                                   -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                                = { bg = c.real_orange, fg = c.black },                                     -- 'incsearch' highlighting; also used for the text replaced with ":s///c" InfoText
    CurrentWord                              = { fg = c.bg0, bg = c.fg0 },
    Cursor                                   = { fg = c.bg0, bg = c.fg0 },                      -- character under the cursor
    CursorColumn                             = { link = "CursorLine" },                         -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorIM                                 = { fg = c.bg0, bg = c.fg0 },                      -- like Cursor, but used when in IME mode |CursorIM|
    CursorLine                               = { bg = c.none }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    CursorLineNr                             = { fg = c.base2 },                                -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    DiffAdd                                  = { bg = c.diff_add, fg = c.black },                             -- diff mode: Added line |diff.txt|
    DiffChange                               = { bg = c.diff_change, fg = c.black },                          -- diff mode: Changed line |diff.txt|
    DiffDelete                               = { bg = c.diff_delete, fg = c.black },                          -- diff mode: Deleted line |diff.txt|
    DiffText                                 = { bg = c.base2, fg = c.black },                            -- diff mode: Changed text within a changed line |diff.txt|
    DiffAdds                                 = { bg = c.diff_add, fg = c.black },                             -- diff mode: Added line |diff.txt|
    DiffChanges                              = { bg = c.diff_change, fg = c.black },                          -- diff mode: Changed line |diff.txt|
    DiffDeletes                              = { bg = c.diff_delete, fg = c.black },                          -- diff mode: Deleted line |diff.txt|
    DiffTexts                                = { bg = c.base2, fg = c.black },                            -- diff mode: Changed text within a changed line |diff.txt|
    Directory                                = { fg = c.blue },                                 -- directory names (and other special names in listings)
    EndOfBuffer                              = { fg = c.bg1 },                                  -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    FloatBorder                              = { fg = c.base1, bg = c.none },
    FoldColumn                               = { bg = options.transparent and c.none or c.bg0, fg = c.bg1 }, -- 'foldcolumn'
    Folded                                   = { fg = c.hide_color },                                  -- line used for closed folds
    Foo                                      = { bg = c.none, fg = c.purple, bold = true },
    LineNr                                   = { bg = options.transparent and c.none or c.bg1, fg = c.fg1 },      -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    MatchParen                               = { fg = c.cyan, bold = true },                                    -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                                  = { fg = c.fg2, bold = true },                                       -- 'showmode' message (e.g., "-- INSERT -- ")
    MoreMsg                                  = { fg = c.fg2 },                                                   -- |more-prompt|
    MsgArea                                  = { fg = c.base2 },                                                  -- Area for messages and cmdline
    NonText                                  = { fg = c.hide_color, bg = c.none },                                                    -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                                   = { fg = c.fg0, bg = c.none },      -- normal text
    NormalFloat                              = { fg = c.fg0, bg = c.none },      -- Normal text in floating windows.
    NormalNC                                 = { fg = c.fg0, bg = c.none },      -- normal text in non-current windows
    NormalSB                                 = { fg = c.fg0, bg = c.none },                                        -- normal text in sidebar
    Pmenu                                    = { bg = options.transparent and c.none or c.bg1, fg = c.fg0 },      -- Popup menu: normal item.
    PmenuSbar                                = { bg = c.black, fg = c.black },                  -- Popup menu: scrollbar.
    PmenuSel                                 = { bg = c.none, fg = c.real_orange },                                      -- Popup menu: selected item.
    PmenuThumb                               = { bg = c.purple, fg = c.purple },                                                  -- Popup menu: Thumb of the scrollbar.
    PopupNotification                        = { bg = c.none, fg = c.hide_color},
    Question                                 = { fg = c.cyan },                                                   -- |hit-enter| prompt and yes/no questions
    QuickFixLine                             = { bg = c.bg1, bold = true, undercurl = options.styles.undercurl }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    SignColumn                               = { bg = options.transparent and c.none or c.bg0 },                  -- column where |signs| are displayed
    SignColumnSB                             = { bg = c.bg0, fg = c.bg1 },                                        -- column where |signs| are displayed
    SpecialKey                               = { fg = c.real_orange },                                                    -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                                 = { sp = c.yello, undercurl = options.styles.undercurl },              -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                                 = { sp = c.blue, undercurl = options.styles.undercurl },             -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                               = { sp = c.purple, undercurl = options.styles.undercurl },           -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                                = { sp = c.green, undercurl = options.styles.undercurl },            -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                               = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 },      -- status line of current window
    StatusLineNC                             = { fg = c.fg2 },                                                    -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    Substitute                               = { bg = c.red, fg = c.bg0 },                                        -- |:substitute| replacement text highlighting
    TabLine                                  = { fg = c.fg2 },                                                    -- tab pages line, not active tab page label
    TabLineFill                              = { bg = c.bg0 },                                                    -- tab pages line, where there are no labels
    TabLineSel                               = { fg = c.real_orange, bg = c.none, bold = true, underline = true },                                       -- tab pages line, active tab page label
    Title                                    = { fg = c.cyan, bold = true },                                      -- titles for output from ":set all", ":autocmd" etc.
    VertSplit                                = { fg = options.transparent and c.bg0 or c.base1 },                 -- the column separating vertically split windows
    Visual                                   = {
      bg = config.is_day() and c.base1 or c.bg1,
      fg = config.is_day() and c.fg0 or c.none
    },                                                                                                       -- Visual mode selection
    VisualNOS                                = { bg = c.bg1 },                                               -- Visual mode selection when vim is "Not Owning the Selection".
    ErrorMsg                                 = { fg = c.real_orange, bold = true, undercurl = options.styles.undercurl },                                  -- error messages on the command line
    ErrorText                                = { sp = c.real_orange, bold = true, undercurl = options.styles.undercurl },
    WarningMsg                               = { fg = c.real_yellow, bold = true, undercurl = options.styles.undercurl },                                               -- warning messages
    WarningText                              = { sp = c.real_yellow, bold = true, undercurl = options.styles.undercurl },
    InfoMsg                                  = { fg = c.fg0, bold = true, undercurl = options.styles.undercurl },                                  -- error messages on the command line
    InfoText                                 = { sp = c.fg0, bold = true, undercurl = options.styles.undercurl },
    HintMsg                                  = { fg = c.fg0, bold = true, undercurl = options.styles.undercurl },                                  -- error messages on the command line
    HintText                                 = { sp = c.fg0, bold = true, undercurl = options.styles.undercurl },
    Whitespace                               = { fg = c.fg2 },                                               -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                                 = { bg = c.bg1 },                                               -- current match in 'wildmenu' completion
    WinSeparator                             = { fg = options.transparent and c.bg0 or c.bg1, bold = true }, -- the column separating vertically split windows
    lCursor                                  = { fg = c.bg0, bg = c.fg0 },                                   -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant                                 = { fg = c.green, bold = true },                                     -- (preferred) any constant
    String                                   = { fg = c.green },     --   a string constant: "this is a string"
    Character                                = { fg = c.green },                                    --  a character constant: 'c', '\n'
    Number                                   = { fg = c.real_green },                                   --   a number constant: 234, 0xff
    Float                                    = { fg = c.real_green },                                   --    a floating point constant: 2.3e10
    Boolean                                  = { fg = c.real_orange },                                   --  a boolean constant: TRUE, false
    Identifier                               = { fg = c.blue },   -- (preferred) any variable name
    Function                                 = { fg = c.purple, bold = true }, -- function name (also: methods for classes)
    Statement                                = { fg = c.purple, bold = true },     -- (preferred) any statement
    Conditional                              = { fg = c.real_yellow, bold = true },    --  if, then, else, endif, switch, etc.
    Repeat                                   = { fg = c.real_yellow, bold = true },     --   for, do, while, etc.
    Label                                    = { fg = c.real_yellow, bold = true },                                   --    case, default, etc.
    Operator                                 = { fg = c.real_yellow, bold = true },                                   -- "sizeof", "+", "*", etc.
    Keyword                                  = { fg = c.real_yellow, bold = true },     --  any other keyword
    Exception                                = { fg = c.real_orange, bold = true },     --  try, catch, throw
    PreProc                                  = { fg = c.violet, bold = true },  -- (preferred) generic Preprocessor
    PreCondit                                = { fg = c.aqua },
    Include                                  = { fg = c.purple },     --  preprocessor #include
    Define                                   = { fg = c.purple },  --   preprocessor #define
    Macro                                    = { fg = c.purple },                                     --    same as Define
    Type                                     = { fg = c.cyan },                                   -- (preferred) int, long, char, etc.
    StorageClass                             = { fg = c.real_yellow },                                   -- static, register, volatile, etc.
    Structure                                = { fg = c.real_yellow },                                   --  struct, union, enum, etc.
    Typedef                                  = { fg = c.blue },     --  A typedef
    Special                                  = { fg = c.orange, bold = true },                                   -- (preferred) any special symbol
    SpecialChar                              = { fg = c.orange, bold = true },                                   --  special character in a constant
    Tag                                      = { fg = c.orange, bold = true },                                   --    you can use CTRL-] on this
    Delimiter                                = { fg = c.fg0, bold = true },                                      --  character that needs attention
    SpecialComment                           = { fg = c.base1, bold = true },                                    -- special things inside a comment
    Debug                                    = { fg = c.hide_color },                                   --    debugging statements
    Underlined                               = { underline = true },                                -- (preferred) text that stands out, HTML links
    Bold                                     = { bold = true },
    Italic                                   = { italic = true },
    -- ("Ignore", below, may be invisible...)
    Ignore                                   = { fg = c.hide_color },                 -- (preferred) left blank, hidden  |hl-Ignore|
    Error                                    = { fg = c.orange, bold = true },                   -- (preferred) any erroneous construct
    Todo                                     = { fg = c.violet, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    qfLineNr                                 = { fg = c.base1 },
    qfFileName                               = { fg = c.blue },
    -- Diagnostic
    RedSign                                  = { fg = c.real_orange },
    YellowSign                               = { fg = c.real_yellow },
    GreenSign                                = { fg = c.real_green },
    BlueSign                                 = { fg = c.blue },
    VirtualTextError                         = { fg = c.hide_color, bg = c.none },
    VirtualTextWarning                       = { fg = c.hide_color, bg = c.none },
    VirtualTextInfo                          = { fg = c.hide_color, bg = c.none },
    VirtualTextHint                          = { fg = c.hide_color, bg = c.none },
    ErrorFloat                               = { fg = c.real_orange },
    WarningFloat                             = { fg = c.real_yellow },
    InfoFloat                                = { fg = c.fg0, bg = c.none },
    HintFloat                                = { fg = c.hide_color, bg = c.none },
    WinBar                                   = { fg = c.hide_color, bg = c.none },
    WinBarNC                                 = { fg = c.hide_color, bg = c.none },
    DiagnosticFloatingError                  = { link = "ErrorFloat" },
    DiagnosticFloatingWarn                   = { link = "WarningFloat" },
    DiagnosticFloatingInfo                   = { link = "InfoFloat" },
    DiagnosticFloatingHint                   = { link = "HintFloat" },
    DiagnosticError                          = { link = "ErrorText" },
    DiagnosticWarn                           = { link = "WarningText" },
    DiagnosticInfo                           = { link = "InfoText" },
    DiagnosticHint                           = { link = "HintText" },
    DiagnosticVirtualTextError               = { link = "VirtualTextError" },
    DiagnosticVirtualTextWarn                = { link = "VirtualTextWarning" },
    DiagnosticVirtualTextInfo                = { link = "VirtualTextInfo" },
    DiagnosticVirtualTextHint                = { link = "VirtualTextHint" },
    DiagnosticUnderlineError                 = { link = "ErrorText" },
    DiagnosticUnderlineWarn                  = { link = "WarningText" },
    DiagnosticUnderlineInfo                  = { link = "InfoText" },
    DiagnosticUnderlineHint                  = { link = "HintText" },
    DiagnosticSignError                      = { link = "RedSign" },
    DiagnosticSignWarn                       = { link = "YellowSign" },
    DiagnosticSignInfo                       = { link = "InfoText" },
    DiagnosticSignHint                       = { link = "HintText" },
    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspDiagnosticsFloatingError              = { link = "DiagnosticFloatingError" },
    LspDiagnosticsFloatingWarning            = { link = "DiagnosticFloatingWarn" },
    LspDiagnosticsFloatingInformation        = { link = "DiagnosticFloatingInfo" },
    LspDiagnosticsFloatingHint               = { link = "DiagnosticFloatingHint" },
    LspDiagnosticsDefaultError               = { link = "DiagnosticError" },
    LspDiagnosticsDefaultWarning             = { link = "DiagnosticWarn" },
    LspDiagnosticsDefaultInformation         = { link = "DiagnosticInfo" },
    LspDiagnosticsDefaultHint                = { link = "DiagnosticHint" },
    LspDiagnosticsVirtualTextError           = { link = "DiagnosticVirtualTextError" },
    LspDiagnosticsVirtualTextWarning         = { link = "DiagnosticVirtualTextWarn" },
    LspDiagnosticsVirtualTextInformation     = { link = "DiagnosticVirtualTextInfo" },
    LspDiagnosticsVirtualTextHint            = { link = "DiagnosticVirtualTextHint" },
    LspDiagnosticsUnderlineError             = { link = "DiagnosticUnderlineError" },
    LspDiagnosticsUnderlineWarning           = { link = "DiagnosticUnderlineWarn" },
    LspDiagnosticsUnderlineInformation       = { link = "DiagnosticUnderlineInfo" },
    LspDiagnosticsUnderlineHint              = { link = "DiagnosticUnderlineHint" },
    LspDiagnosticsSignError                  = { link = "DiagnosticSignError" },
    LspDiagnosticsSignWarning                = { link = "DiagnosticSignWarn" },
    LspDiagnosticsSignInformation            = { link = "DiagnosticSignInfo" },
    LspDiagnosticsSignHint                   = { link = "DiagnosticSignHint" },
    LspReferenceText                         = { link = "CurrentWord" },
    LspReferenceRead                         = { link = "CurrentWord" },
    LspReferenceWrite                        = { link = "CurrentWord" },
    LspCodeLens                              = { link = "VirtualTextInfo" },
    LspCodeLensSeparator                     = { link = "VirtualTextHint" },
    LspSignatureActiveParameter              = { link = "Search" },
    TermCursor                               = { link = "Cursor" },
    healthError                              = { fg = c.real_orange },
    healthSuccess                            = { fg = c.real_green },
    healthWarning                            = { fg = c.real_yellow },
    ALEErrorSign                             = { link = "ErrorMsg" },
    ALEWarningSign                           = { link = "WarningMsg" },
    -- These highlight Groups are for Tree-sitter
    TSAnnotation                             = { fg = c.purple },
    TSAttribute                              = { fg = c.blue },
    TSBoolean                                = { fg = c.real_orange },
    TSCharacter                              = { fg = c.green },
    TSComment                                = { link = "Comment" },
    TSConditional                            = { link = "Conditional" },
    TSConstBuiltin                           = { link = "Constant" },
    TSConstMacro                             = { link = "Constant" },
    TSConstant                               = { link = "Constant" },
    TSConstructor                            = { link = "Constant" },
    TSException                              = { fg = c.real_orange },
    TSField                                  = { fg = c.blue },
    TSFloat                                  = { fg = c.real_green },
    TSFuncBuiltin                            = { fg = c.purple, bold = true },
    TSFuncMacro                              = { fg = c.purple, bold = true },
    TSFunction                               = { fg = c.purple, bold = true },
    TSInclude                                = { link = "Include" },
    TSKeyword                                = { link = "Keyword" },
    TSKeywordFunction                        = { link = "Function" },
    TSKeywordOperator                        = { link = "Operator" },
    TSLabel                                  = { link = "Label" },
    TSMethod                                 = { fg = c.purple, bold = true },
    TSNamespace                              = { fg = c.violet, italic = true },
    TSNone                                   = { fg = c.real_orange },
    TSNumber                                 = { fg = c.real_green },
    TSOperator                               = { fg = c.orange },
    TSParameter                              = { fg = c.fg0 },
    TSParameterReference                     = { fg = c.fg0 },
    TSProperty                               = { fg = c.blue },
    TSPunctBracket                           = { fg = c.fg0 },
    TSPunctDelimiter                         = { fg = c.fg0, bold = true },
    TSPunctSpecial                           = { fg = c.orange, bold = true },
    TSRepeat                                 = { link = "Repeat" },
    TSStorageClass                           = { link = "StorageClass" },
    TSString                                 = { link = "String" },
    TSStringEscape                           = { link = "String" },
    TSStringRegex                            = { link = "String" },
    TSSymbol                                 = { fg = c.fg0 },
    TSTag                                    = { fg = c.real_orange },
    TSTagDelimiter                           = { fg = c.green },
    TSText                                   = { fg = c.fg0 },
    TSStrike                                 = { fg = c.base1 },
    TSMath                                   = { fg = c.real_green },
    TSType                                   = { link = "Type" },
    TSTypeBuiltin                            = { link = "Type" },
    TSURI                                    = { link = "markdownUrl" },
    TSVariable                               = { link = "Identifier" },
    TSVariableBuiltin                        = { link = "Identifier" },
    --- Identifiers
    ["@variable"]                            = { link = "Identifier" }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]                    = { link = "Identifier" },                                  -- Variable names that are defined by the languages, like `this` or `self`.
    ["@text.reference"]                      = { link = "Identifier" },
    ["@text.todo.unchecked"]                 = { fg = c.violet },                                 -- For brackets and parens.
    ["@text.todo.checked"]                   = { fg = c.hide_color },                                -- For brackets and parens.
    ["@text.warning"]                        = { fg = c.real_yellow },
    ["@text.danger"]                         = { fg = c.real_orange },
    ["@text.diff.add"]                       = { link = "DiffAdd" },
    ["@text.diff.delete"]                    = { link = "DiffDelete" },
    ["@namespace"]                           = { link = "TSNamespace" },
    -- LSP Semantic Token Groups
    ["@lsp.type.comment"]                    = { link = "Comment" },
    ["@lsp.type.enum"]                       = { link = "Type" },
    ["@lsp.type.enumMember"]                 = { link = "Number" },
    ["@lsp.type.interface"]                  = { fg = c.real_yellow },
    ["@lsp.type.keyword"]                    = { link = "Keyword" },
    ["@lsp.type.modifier"]                   = { link = "Special" },
    ["@lsp.type.namespace"]                  = { link = "TSNamespace" },
    ["@lsp.type.parameter"]                  = { link = "TSParameter" },
    ["@lsp.type.property"]                   = { link = "TSProperty" },
    ["@lsp.type.variable"]                   = { fg = c.blue },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "TSFunction" },
    ["@lsp.typemod.macro.defaultLibrary"]    = { link = "TSFuncMacro" },
    ["@lsp.typemod.method.defaultLibrary"]   = { link = "TSMethod" },
    ["@lsp.typemod.operator.injected"]       = { link = "TSOperator" },
    ["@lsp.typemod.string.injected"]         = { link = "String" },
    ["@lsp.typemod.type.defaultLibrary"]     = { link = "Type" },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "TSVariableBuiltin" },
    ["@lsp.typemod.variable.injected"]       = { link = "TSVariable" },
    -- ts-rainbow
    rainbowcol1                              = { fg = c.red },
    rainbowcol2                              = { fg = c.orange },
    rainbowcol3                              = { fg = c.yellow },
    rainbowcol4                              = { fg = c.green },
    rainbowcol5                              = { fg = c.aqua },
    rainbowcol6                              = { fg = c.blue },
    rainbowcol7                              = { fg = c.purple },
    -- LspTrouble
    TroubleText                              = { fg = c.fg0 },
    TroubleCount                             = { fg = c.base1 },
    TroubleNormal                            = { fg = c.base1 },
    -- Illuminate
    illuminatedWord                          = { link = "CurrentWord" },
    illuminatedCurWord                       = { link = "CurrentWord" },
    IlluminatedWordText                      = { link = "CurrentWord" },
    IlluminatedWordRead                      = { link = "CurrentWord" },
    IlluminatedWordWrite                     = { link = "CurrentWord" },
    -- diff
    diffAdded                                = { fg = c.real_green },
    diffRemoved                              = { fg = c.real_orange },
    diffChanged                              = { fg = c.real_yellow },
    diffOldFile                              = { fg = c.hide_color },
    diffNewFile                              = { fg = c.base1 },
    diffFile                                 = { fg = c.aqua },
    diffLine                                 = { fg = c.aqua },
    diffIndexLine                            = { fg = c.purple },
    -- Neogit
    NeogitBranch                             = { fg = c.purple },
    NeogitRemote                             = { fg = c.violet },
    NeogitHunkHeader                         = { fg = c.fg0 },
    NeogitHunkHeaderHighlight                = { fg = c.blue },
    NeogitDiffContextHighlight               = { fg = c.fg2 },
    NeogitDiffDeleteHighlight                = { fg = c.red },
    NeogitDiffAddHighlight                   = { fg = c.green },
    -- Neotest
    NeotestPassed                            = { fg = c.green },
    NeotestRunning                           = { fg = c.yellow },
    NeotestFailed                            = { fg = c.red },
    NeotestSkipped                           = { fg = c.blue },
    NeotestTest                              = { fg = c.base1 },
    NeotestNamespace                         = { fg = c.bg_green },
    NeotestFocused                           = { fg = c.yellow },
    NeotestFile                              = { fg = c.aqua },
    NeotestDir                               = { fg = c.blue },
    NeotestBorder                            = { fg = c.blue },
    NeotestIndent                            = { fg = c.base2 },
    NeotestExpandMarker                      = { fg = c.base2 },
    NeotestAdapterName                       = { fg = c.purple, bold = true },
    NeotestWinSelect                         = { fg = c.blue },
    NeotestMarked                            = { fg = c.blue },
    NeotestTarget                            = { fg = c.blue },
    -- GitGutter
    GitGutterAdd                             = { link = "GreenSign" },
    GitGutterChange                          = { link = "YellowSign" },
    GitGutterDelete                          = { link = "RedSign" },
    GitGutterChangeDelete                    = { fg = c.purple },
    GitGutterAddLine                         = { link = "diffAdded" },
    GitGutterChangeLine                      = { link = "diffChanged" },
    GitGutterDeleteLine                      = { link = "diffRemoved" },
    GitGutterChangeDeleteLine                = { fg = c.purple },
    GitGutterAddLineNr                       = { fg = c.real_green },
    GitGutterChangeLineNr                    = { fg = c.real_yellow },
    GitGutterDeleteLineNr                    = { fg = c.real_orange },
    GitGutterChangeDeleteLineNr              = { fg = c.purple },
    -- GitSigns
    GitSignsAdd                              = { link = "GreenSign" }, -- diff mode: Added line |diff.txt|
    GitSignsChange                           = { link = "YellowSign" },  -- diff mode: Changed line |diff.txt|
    GitSignsDelete                           = { link = "RedSign" },   -- diff mode: Deleted line |diff.txt|
    GitSignsAddNr                            = { fg = c.real_green },
    GitSignsChangeNr                         = { fg = c.real_yellow },
    GitSignsDeleteNr                         = { fg = c.real_orange },
    GitSignsAddLn                            = { link = "diffAdded" },
    GitSignsDeleteLn                         = { link = "diffRemoved" },
    GitSignsCurrentLineBlame                 = { fg = c.base1 },
    -- Telescope
    TelescopeMatching                        = { fg = c.cyan, bold = true },
    TelescopeBorder                          = { fg = c.base0, bg = options.transparent and c.none or c.bg0 },
    TelescopeNormal                          = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 },
    TelescopePromptPrefix                    = { fg = c.orange },
    TelescopeSelection                       = { fg = c.green },
    -- NvimTree
    NvimTreeSymlink                          = { fg = c.fg0 },
    NvimTreeFolderName                       = { fg = c.green },
    NvimTreeRootFolder                       = { fg = c.base1 },
    NvimTreeFolderIcon                       = { fg = c.orange },
    NvimTreeEmptyFolderName                  = { fg = c.green },
    NvimTreeOpenedFolderName                 = { fg = c.green },
    NvimTreeExecFile                         = { fg = c.fg0 },
    NvimTreeOpenedFile                       = { fg = c.fg0 },
    NvimTreeSpecialFile                      = { fg = c.fg0 },
    NvimTreeImageFile                        = { fg = c.fg0 },
    NvimTreeMarkdownFile                     = { fg = c.fg0 },
    NvimTreeIndentMarker                     = { fg = c.fg2 },
    NvimTreeGitDirty                         = { fg = c.yellow },
    NvimTreeGitStaged                        = { fg = c.blue },
    NvimTreeGitMerge                         = { fg = c.orange },
    NvimTreeGitRenamed                       = { fg = c.purple },
    NvimTreeGitNew                           = { fg = c.aqua },
    NvimTreeGitDeleted                       = { fg = c.red },
    NvimTreeLspDiagnosticsError              = { link = "RedSign" },
    NvimTreeLspDiagnosticsWarning            = { link = "YellowSign" },
    NvimTreeLspDiagnosticsInformation        = { link = "BlueSign" },
    NvimTreeLspDiagnosticsHint               = { link = "GreenSign" },
    -- NeoTree
    NeoTreeDirectoryName                     = { fg = c.blue },
    NeoTreeDirectoryIcon                     = { fg = c.blue },
    NeoTreeNormal                            = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 },
    NeoTreeExpander                          = { fg = c.base1 },
    NeoTreeIndentMarker                      = { fg = c.base1 },
    NeoTreeRootName                          = { fg = c.blue, bold = true },
    NeoTreeSymbolicLinkTarget                = { fg = c.purple },
    NeoTreeGitAdded                          = { fg = c.green },
    NeoTreeGitConflict                       = { fg = c.red },
    NeoTreeGitDeleted                        = { fg = c.red },
    NeoTreeGitIgnored                        = { fg = c.base1 },
    NeoTreeGitModified                       = { fg = c.yellow },
    NeoTreeGitUnstaged                       = { fg = c.red },
    NeoTreeGitUntracked                      = { fg = c.blue },
    NeoTreeGitStaged                         = { fg = c.green },
    NeoTreeFloatBorder                       = { fg = c.blue },
    NeoTreeFloatTitle                        = { fg = c.base3 },
    NeoTreeFileNameOpened                    = { fg = c.purple },
    NeoTreeDimText                           = { fg = c.base1 },
    NeoTreeFilterTerm                        = { fg = c.green, bold = true },
    NeoTreeTabActive                         = { bg = options.transparent and c.none or c.bg0, fg = c.aqua, bold = true },
    NeoTreeTabInactive                       = { bg = options.transparent and c.none or c.bg1, fg = c.base2 },
    NeoTreeTabSeparatorActive                = {
      fg = options.transparent and c.none or c.bg0,
      bg = options.transparent and c.none or c.bg0
    },
    NeoTreeTabSeparatorInactive              = {
      fg = options.transparent and c.none or c.bg1,
      bg = options.transparent and c.none or c.bg1
    },
    NeoTreeVertSplit                         = { fg = c.base, bg = options.transparent and c.none or c.bg1 },
    NeoTreeStatusLineNC                      = { fg = c.aqua, bg = c.aqua },
    -- Fern
    FernBranchText                           = { fg = c.blue },
    -- glyph palette
    GlyphPalette1                            = { fg = c.red },
    GlyphPalette2                            = { fg = c.green },
    GlyphPalette3                            = { fg = c.yellow },
    GlyphPalette4                            = { fg = c.blue },
    GlyphPalette6                            = { fg = c.green },
    GlyphPalette7                            = { fg = c.fg0 },
    GlyphPalette9                            = { fg = c.red },
    -- Dashboard
    DashboardShortCut                        = { fg = c.violet },
    DashboardHeader                          = { fg = c.blue },
    DashboardCenter                          = { fg = c.purple },
    DashboardFooter                          = { fg = c.red, italic = true },
    -- Alpha
    AlphaShortcut                            = { fg = c.orange },
    AlphaHeader                              = { fg = c.red },
    AlphaHeaderLabel                         = { fg = c.base2 },
    AlphaFooter                              = { fg = c.red, italic = true },
    AlphaButtons                             = { fg = c.purple },
    -- WhichKey
    WhichKey                                 = { fg = c.cyan },
    WhichKeyGroup                            = { fg = c.blue },
    WhichKeyDesc                             = { fg = c.purple },
    WhichKeySeparator                        = { fg = c.real_orange },
    WhichKeyFloat                            = { bg = options.transparent and c.none or c.bg1 },
    WhichKeyValue                            = { fg = c.fg2 },
    -- LspSaga (Start)
    -- general
    TitleString                              = { link = "String" },
    TitleSymbol                              = { link = "Symbol" },
    TitleIcon                                = { fg = c.real_orange },
    SagaBorder                               = { link = "FloatBorder" },
    SagaExpand                               = { fg = c.real_orange },
    SagaCollapse                             = { fg = c.real_orange },
    SagaBeacon                               = { bg = c.purple },
    -- code action
    ActionPreviewNormal                      = { link = 'SagaBorder' },
    ActionPreviewBorder                      = { link = 'SagaBorder' },
    ActionPreviewTitle                       = { fg = c.purple },
    CodeActionNormal                         = { link = 'SagaBorder' },
    CodeActionBorder                         = { link = 'SagaBorder' },
    CodeActionText                           = { fg = c.yellow },
    CodeActionConceal                        = { fg = c.green },
    -- finder
    FinderSelection                          = { fg = c.violet, bold = true },
    FinderFileName                           = { fg = c.base3 },
    FinderCount                              = { link = 'Title' },
    FinderIcon                               = { fg = c.violet },
    FinderType                               = { fg = c.purple },
    --finder spinner
    FinderSpinnerTitle                       = { fg = c.purple, bold = true },
    FinderSpinner                            = { fg = c.purple, bold = true },
    FinderPreviewSearch                      = { link = 'Search' },
    FinderVirtText                           = { fg = c.red },
    FinderNormal                             = { link = 'SagaBorder' },
    FinderBorder                             = { link = 'SagaBorder' },
    FinderPreviewBorder                      = { link = 'SagaBorder' },
    -- definition
    DefinitionBorder                         = { link = 'SagaBorder' },
    DefinitionNormal                         = { link = 'Normal' },
    DefinitionSearch                         = { link = 'Search' },
    -- hover
    HoverNormal                              = { link = 'SagaBorder' },
    HoverBorder                              = { link = 'SagaBorder' },
    -- rename
    RenameBorder                             = { link = 'SagaBorder' },
    RenameNormal                             = { fg = c.orange },
    RenameMatch                              = { link = 'Search' },
    -- diagnostic
    DiagnosticSource                         = { link = 'Normal' },
    DiagnosticNormal                         = { link = 'Normal' },
    DiagnosticBorder                         = { link = 'SagaBorder' },
    DiagnosticErrorBorder                    = { link = 'SagaBorder' },
    DiagnosticWarnBorder                     = { link = 'SagaBorder' },
    DiagnosticHintBorder                     = { link = 'SagaBorder' },
    DiagnosticInfoBorder                     = { link = 'SagaBorder' },
    DiagnosticPos                            = { fg = c.fg2 },
    DiagnosticWord                           = { fg = c.fg0 },
    -- Call Hierachry
    CallHierarchyNormal                      = { link = 'SagaBorder' },
    CallHierarchyBorder                      = { link = 'SagaBorder' },
    CallHierarchyIcon                        = { fg = c.purple },
    CallHierarchyTitle                       = { fg = c.red },
    -- lightbulb
    LspSagaLightBulb                         = { link = 'DiagnosticSignHint' },
    -- shadow
    SagaShadow                               = { bg = c.bg1 },
    -- Outline
    OutlineIndent                            = { fg = c.purple },
    OutlinePreviewBorder                     = { link = 'SagaBorder' },
    OutlinePreviewNormal                     = { link = 'SagaBorder' },
    -- Float term
    TerminalBorder                           = { link = 'SagaBorder' },
    TerminalNormal                           = { link = 'SagaBorder' },
    -- LspSaga (end)

    -- BufferLine
    BufferLineIndicatorSelected              = { fg = c.green, bg = c.none },
    -- Barbar
    BufferCurrent                            = { bg = c.fg2, fg = c.fg0 },
    BufferCurrentIndex                       = { bg = c.fg2, fg = c.base2 },
    BufferCurrentMod                         = { bg = c.fg2, fg = c.yellow },
    BufferCurrentSign                        = { bg = c.fg2, fg = c.yellow },
    BufferCurrentTarget                      = { bg = c.fg2, fg = c.real_orange },
    BufferVisible                            = { bg = c.bg1, fg = c.fg0 },
    BufferVisibleIndex                       = { bg = c.bg1, fg = c.yellow },
    BufferVisibleMod                         = { bg = c.bg1, fg = c.real_orange },
    BufferVisibleSign                        = { bg = c.bg1, fg = c.real_green },
    BufferVisibleTarget                      = { bg = c.bg1, fg = c.real_orange },
    BufferInactive                           = { bg = c.bg1, fg = c.hide_color },
    BufferInactiveIndex                      = { bg = c.bg1, fg = c.hide_color },
    BufferInactiveMod                        = { bg = c.bg1, fg = c.hide_color },
    BufferInactiveSign                       = { bg = c.bg1, fg = c.hide_color },
    BufferInactiveTarget                     = { bg = c.bg1, fg = c.hide_color },
    BufferTabpages                           = { bg = c.bg1, fg = c.none },
    BufferTabpage                            = { bg = c.bg1, fg = c.none },
    -- Sneak
    Sneak                                    = { link = "Search" },
    SneakScope                               = { link = "DiffText" },
    -- Hop
    HopNextKey                               = { fg = c.purple, bold = true },
    HopNextKey1                              = { fg = c.blue, bold = true },
    HopNextKey2                              = { fg = c.aqua },
    HopUnmatched                             = { fg = c.base3 },
    LeapMatch                                = { bg = c.purple, fg = c.fg0, bold = true },
    LeapLabelPrimary                         = { fg = c.purple, bold = true },
    LeapLabelSecondary                       = { fg = c.green, bold = true },
    LeapBackdrop                             = { fg = c.base2 },
    LightspeedGreyWash                       = { fg = c.base2 },
    LightspeedCursor                         = { link = "Cursor" },
    LightspeedLabel                          = { fg = c.red, bg = c.none, bold = true, underline = true },
    LightspeedLabelDistant                   = { fg = c.blue, bg = c.none, bold = true, underline = true },
    LightspeedLabelDistantOverlapped         = { fg = c.bg_green, underline = true },
    LightspeedLabelOverlapped                = { fg = c.violet, underline = true },
    LightspeedMaskedChar                     = { fg = c.purple },
    LightspeedOneCharMatch                   = { bg = c.purple, fg = c.fg0, bold = true },
    LightspeedPendingOpArea                  = { bg = c.green, fg = c.bg0 },
    LightspeedShortcut                       = { bg = c.red, fg = c.fg0, bold = true },
    LightspeedUnlabeledMatch                 = { fg = c.fg0, bg = c.none, bold = true },
    -- Cmp
    CmpDocumentation                         = { fg = c.fg0, bg = options.transparent and c.none or c.bg1 },
    CmpDocumentationBorder                   = { fg = c.cyan, bg = c.none },
    CmpItemKindDefault                       = { fg = c.fg2, bg = c.none },
    CmpItemAbbrMatch                         = { fg = c.cyan, bold = true },
    CmpItemAbbrMatchFuzzy                    = { fg = c.cyan, bold = true },
    CmpItemAbbr                              = { fg = c.fg0 },
    CmpItemAbbrDeprecated                    = { fg = c.base1 },
    CmpItemMenu                              = { fg = c.fg0 },
    CmpItemKind                              = { fg = c.real_orange },
    CmpItemKindText                          = { fg = c.fg0 },
    CmpItemKindMethod                        = { fg = c.purple },
    CmpItemKindFunction                      = { fg = c.purple },
    CmpItemKindConstructor                   = { fg = c.yellow },
    CmpItemKindField                         = { fg = c.blue },
    CmpItemKindVariable                      = { fg = c.blue },
    CmpItemKindClass                         = { fg = c.real_yellow },
    CmpItemKindInterface                     = { fg = c.real_yellow },
    CmpItemKindModule                        = { fg = c.real_yellow },
    CmpItemKindProperty                      = { fg = c.blue },
    CmpItemKindUnit                          = { fg = c.purple },
    CmpItemKindValue                         = { fg = c.blue },
    CmpItemKindEnum                          = { fg = c.green },
    CmpItemKindKeyword                       = { fg = c.real_orange },
    CmpItemKindSnippet                       = { fg = c.aqua },
    CmpItemKindColor                         = { fg = c.fg0 },
    CmpItemKindFile                          = { fg = c.fg0 },
    CmpItemKindReference                     = { fg = c.fg0 },
    CmpItemKindFolder                        = { fg = c.fg0 },
    CmpItemKindEnumMember                    = { fg = c.real_green },
    CmpItemKindConstant                      = { fg = c.green },
    CmpItemKindStruct                        = { fg = c.real_yellow },
    CmpItemKindEvent                         = { fg = c.orange },
    CmpItemKindOperator                      = { fg = c.real_orange },
    CmpItemKindTypeParameter                 = { fg = c.yellow },
    NavicIconsFile                           = { fg = c.fg0 },
    NavicIconsModule                         = { fg = c.real_yellow },
    NavicIconsNamespace                      = { fg = c.volatile },
    NavicIconsPackage                        = { fg = c.real_yellow },
    NavicIconsClass                          = { fg = c.real_yellow },
    NavicIconsMethod                         = { fg = c.purple },
    NavicIconsProperty                       = { fg = c.blue },
    NavicIconsField                          = { fg = c.blue },
    NavicIconsConstructor                    = { fg = c.yellow },
    NavicIconsEnum                           = { fg = c.green },
    NavicIconsInterface                      = { fg = c.real_yellow },
    NavicIconsFunction                       = { fg = c.purple },
    NavicIconsVariable                       = { fg = c.blue },
    NavicIconsConstant                       = { fg = c.green },
    NavicIconsString                         = { fg = c.green },
    NavicIconsNumber                         = { fg = c.real_green },
    NavicIconsBoolean                        = { fg = c.real_orange },
    NavicIconsArray                          = { fg = c.aqua },
    NavicIconsObject                         = { fg = c.yellow },
    NavicIconsKey                            = { fg = c.volatile },
    NavicIconsKeyword                        = { fg = c.real_orange },
    NavicIconsNull                           = { fg = c.real_orange },
    NavicIconsEnumMember                     = { fg = c.real_green },
    NavicIconsStruct                         = { fg = c.real_yellow },
    NavicIconsEvent                          = { fg = c.orange },
    NavicIconsOperator                       = { fg = c.real_orange },
    NavicIconsTypeParameter                  = { fg = c.yellow },
    NavicText                                = { fg = c.fg0 },
    NavicSeparator                           = { fg = c.fg0 },
    -- Indent Blank Line
    IblIndent                                = { fg = options.transparent and c.bg1 or c.fg2, bg = c.none },
    IblScope                                 = { fg = c.text, bg = c.none },
    RainbowRed                               = { blend = 0, fg = c.orange },
    RainbowYellow                            = { blend = 0, fg = c.yellow },
    RainbowBlue                              = { blend = 0, fg = c.blue },
    RainbowOrange                            = { blend = 0, fg = c.purple },
    RainbowGreen                             = { blend = 0, fg = c.green },
    RainbowViolet                            = { blend = 0, fg = c.violet },
    RainbowCyan                              = { blend = 0, fg = c.purple },
    -- Scrollbar
    ScrollbarHandle                          = { fg = c.none, bg = c.bg1 },
    ScrollbarSearchHandle                    = { fg = c.orange, bg = c.bg1 },
    ScrollbarSearch                          = { fg = c.orange, bg = c.none },
    ScrollbarErrorHandle                     = { fg = c.red, bg = c.bg1 },
    ScrollbarError                           = { fg = c.red, bg = c.none },
    ScrollbarWarnHandle                      = { fg = c.yellow, bg = c.bg1 },
    ScrollbarWarn                            = { fg = c.yellow, bg = c.none },
    ScrollbarInfoHandle                      = { fg = c.green, bg = c.bg1 },
    ScrollbarInfo                            = { fg = c.green, bg = c.none },
    ScrollbarHintHandle                      = { fg = c.blue, bg = c.bg1 },
    ScrollbarHint                            = { fg = c.blue, bg = c.none },
    ScrollbarMiscHandle                      = { fg = c.purple, bg = c.bg1 },
    ScrollbarMisc                            = { fg = c.purple, bg = c.none },
    -- Yanky
    YankyPut                                 = { link = "IncSearch" },
    YankyYanked                              = { link = "IncSearch" },
    -- Notify
    NotifyERRORBorder                        = { fg = c.red },
    NotifyWARNBorder                         = { fg = c.yellow },
    NotifyINFOBorder                         = { fg = c.green },
    NotifyDEBUGBorder                        = { fg = c.base1 },
    NotifyTRACEBorder                        = { fg = c.purple },
    NotifyERRORIcon                          = { fg = c.red },
    NotifyWARNIcon                           = { fg = c.yellow },
    NotifyINFOIcon                           = { fg = c.green },
    NotifyDEBUGIcon                          = { fg = c.base1 },
    NotifyTRACEIcon                          = { fg = c.purple },
    NotifyERRORTitle                         = { fg = c.red },
    NotifyWARNTitle                          = { fg = c.yellow },
    NotifyINFOTitle                          = { fg = c.green },
    NotifyDEBUGTitle                         = { fg = c.base1 },
    NotifyTRACETitle                         = { fg = c.purple },
    -- Mini
    MiniCompletionActiveParameter            = { underline = true },
    MiniCursorword                           = { bg = c.fg2 },
    MiniCursorwordCurrent                    = { bg = c.fg2 },
    MiniIndentscopeSymbol                    = { fg = options.transparent and c.bg1 or c.fg2 },
    MiniIndentscopePrefix                    = { nocombine = true }, -- Make it invisible
    MiniJump                                 = { bg = c.purple, fg = "#ffffff" },
    MiniJump2dSpot                           = { fg = c.purple, bold = true, nocombine = true },
    MiniStarterCurrent                       = { nocombine = true },
    MiniStarterFooter                        = { fg = c.yellow, italic = true },
    MiniStarterHeader                        = { fg = c.blue },
    MiniStarterInactive                      = { fg = c.base1, style = options.styles.comments },
    MiniStarterItem                          = { fg = c.fg0, bg = options.transparent and c.none or c.bg0 },
    MiniStarterItemBullet                    = { fg = c.base2 },
    MiniStarterItemPrefix                    = { fg = c.red },
    MiniStarterSection                       = { fg = c.blue },
    MiniStarterQuery                         = { fg = c.green },
    MiniStatuslineDevinfo                    = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFileinfo                   = { fg = c.fg1, bg = c.bg1 },
    MiniStatuslineFilename                   = { fg = c.fg1, bg = c.fg2 },
    MiniStatuslineInactive                   = { fg = c.blue, bg = c.bg1 },
    MiniStatuslineModeCommand                = { fg = "BLACK", bg = c.yellow, bold = true },
    MiniStatuslineModeInsert                 = { fg = "BLACK", bg = c.green, bold = true },
    MiniStatuslineModeNormal                 = { fg = "BLACK", bg = c.blue, bold = true },
    MiniStatuslineModeOther                  = { fg = "BLACK", bg = c.aqua, bold = true },
    MiniStatuslineModeReplace                = { fg = "BLACK", bg = c.red, bold = true },
    MiniStatuslineModeVisual                 = { fg = "BLACK", bg = c.purple, bold = true },
    MiniSurround                             = { bg = c.orange, fg = "BLACK" },
    MiniTablineCurrent                       = { fg = c.real_orange, bg = c.none },
    MiniTablineFill                          = { bg = c.none },
    MiniTablineHidden                        = { fg = "BLACK", bg = c.bg1 },
    MiniTablineModifiedCurrent               = { fg = c.real_orange, bg = c.fg2 },
    MiniTablineModifiedHidden                = { bg = c.bg1, fg = c.bg_red },
    MiniTablineModifiedVisible               = { fg = c.yellow, bg = c.bg1 },
    MiniTablineTabpagesection                = { bg = c.bg1, fg = c.none },
    MiniTablineVisible                       = { fg = c.fg, bg = c.bg1 },
    MiniTestEmphasis                         = { bold = true },
    MiniTestFail                             = { fg = c.red, bold = true },
    MiniTestPass                             = { fg = c.green, bold = true },
    MiniTrailspace                           = { bg = c.red },
    -- Noice

    NoiceCompletionItemKindDefault           = { fg = c.fg2, bg = c.none },
    NoiceCompletionItemKindKeyword           = { fg = c.violet, bg = c.none },
    NoiceCompletionItemKindVariable          = { fg = c.purple, bg = c.none },
    NoiceCompletionItemKindConstant          = { fg = c.purple, bg = c.none },
    NoiceCompletionItemKindReference         = { fg = c.purple, bg = c.none },
    NoiceCompletionItemKindValue             = { fg = c.purple, bg = c.none },
    NoiceCompletionItemKindFunction          = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindMethod            = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindConstructor       = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindClass             = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindInterface         = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindStruct            = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEvent             = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEnum              = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindUnit              = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindModule            = { fg = c.yellow, bg = c.none },
    NoiceCompletionItemKindProperty          = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindField             = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindTypeParameter     = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindEnumMember        = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindOperator          = { fg = c.green1, bg = c.none },
    NoiceCompletionItemKindSnippet           = { fg = "BLACK", bg = c.none },
    --[[
      language specific settings are need to keep from here.
      Here one can define vim's build in Language specific highlight group.
    --]]

    -- HTML
    htmlH1                                    = { fg = c.cyan, bold = true },
    htmlH2                                    = { fg = c.real_orange, bold = true },
    htmlH3                                    = { fg = c.real_green, bold = true },
    htmlH4                                    = { fg = c.real_yellow, bold = true },
    htmlH5                                    = { fg = c.blue, bold = true },
    htmlH6                                    = { fg = c.purple, bold = true },
    htmlLink                                  = { underline = true },
    htmlBold                                  = { bold = true },
    htmlBoldUnderline                         = { underline = true, bold = true },
    htmlBoldItalics                           = { italic = true, bold = true },
    htmlBoldUnderlineItalic                   = { underline = true, italic = true, bold = true },
    htmlUnderline                             = { underline = true },
    htmlUnderlineItalic                       = { italic = true, underline = true },
    htmlItalic                                = { italic = true },
    mkdCodeDelimiter                          = { bg = c.bg0, fg = c.fg0 },
    -- MarkDown
    markdownH1                                = { fg = c.cyan, bold = true },
    markdownH2                                = { fg = c.real_orange, bold = true },
    markdownH3                                = { fg = c.real_green, bold = true },
    markdownH4                                = { fg = c.real_yellow, bold = true },
    markdownH5                                = { fg = c.blue, bold = true },
    markdownH6                                = { fg = c.purple, bold = true },
    markdownUrl                               = { fg = c.blue, underline = true },
    markdownItalic                            = { italic = true },
    markdownBold                              = { bold = true },
    markdownItalicDelimiter                   = { fg = c.base1, italic = true },
    markdownCode                              = { fg = c.green },
    markdownCodeBlock                         = { fg = c.aqua },
    markdownCodeDelimiter                     = { fg = c.aqua },
    markdownBlockquote                        = { fg = c.fg2 },
    markdownListMarker                        = { fg = c.red },
    markdownOrderedListMarker                 = { fg = c.red },
    markdownRule                              = { fg = c.purple },
    markdownHeadingRule                       = { fg = c.base1 },
    markdownUrlDelimiter                      = { fg = c.base1 },
    markdownLinkDelimiter                     = { fg = c.base1 },
    markdownLinkTextDelimiter                 = { fg = c.base1 },
    markdownHeadingDelimiter                  = { fg = c.base1 },
    markdownLinkText                          = { fg = c.purple },
    markdownUrlTitleDelimiter                 = { fg = c.base1 },
    markdownIdDeclaration                     = { link = "markdownLinkText" },
    markdownBoldDelimiter                     = { fg = c.base1 },
    markdownId                                = { fg = c.yellow },
    ["@punctuation.special.markdown"]         = { fg = c.orange, bold = true },
    ["@text.literal.markdown_inline"]         = { bg = c.bg0, fg = c.blue },
    ["@markup.heading.1.markdown"]            = { link = "markdownH1" },
    ["@markup.heading.2.markdown"]            = { link = "markdownH2" },
    ["@markup.heading.3.markdown"]            = { link = "markdownH3" },
    ["@markup.heading.4.markdown"]            = { link = "markdownH4" },
    ["@markup.heading.5.markdown"]            = { link = "markdownH5" },
    ["@markup.heading.6.markdown"]            = { link = "markdownH6" },
    ["@markup.heading.1.marker.markdown"]     = { link = "markdownH1" },
    ["@markup.heading.2.marker.markdown"]     = { link = "markdownH2" },
    ["@markup.heading.3.marker.markdown"]     = { link = "markdownH3" },
    ["@markup.heading.4.marker.markdown"]     = { link = "markdownH4" },
    ["@markup.heading.5.marker.markdown"]     = { link = "markdownH5" },
    ["@markup.heading.6.marker.markdown"]     = { link = "markdownH6" },
    ["@markup.list.markdown"]                 = { link = "markdownListMarker" },
    ["@markup.quote.markdown"]                = { link = "markdownBlockquote" },
    ["@markup.strong.markdown_inline"]        = { link = "markdownBold" },
    ["@markup.italic.markdown_inline"]        = { link = "markdownItalic" },
    ["@markup.heading.markdown"]              = { link = "markdownBold" },
    ["@markup.link.label.markdown_inline"]    = { link = "markdownLinkText" },
    ["@markup.strikethrough.markdown_inline"] = { strikethrough = true },

    -- CSS
    cssAttrComma                              = { fg = c.fg0 },
    cssBraces                                 = { fg = c.fg0 },
    cssTagName                                = { fg = c.purple, italic = options.enable_italics },
    cssClassNameDot                           = { fg = c.red },
    cssClassName                              = { fg = c.red, italic = options.enable_italics },
    cssFunctionName                           = { fg = c.yellow },
    cssAttr                                   = { fg = c.orange },
    cssProp                                   = { fg = c.aqua },
    cssCommonAttr                             = { fg = c.yellow },
    cssPseudoClassId                          = { fg = c.blue },
    cssPseudoClassFn                          = { fg = c.green },
    cssPseudoClass                            = { fg = c.purple },
    cssImportant                              = { fg = c.red, italic = options.enable_italics },
    cssSelectorOp                             = { fg = c.orange },
    cssSelectorOp2                            = { fg = c.orange },
    cssColor                                  = { fg = c.green },
    cssAttributeSelector                      = { fg = c.aqua },
    cssUnitDecorators                         = { fg = c.orange },
    cssValueLength                            = { fg = c.green },
    cssValueInteger                           = { fg = c.green },
    cssValueNumber                            = { fg = c.green },
    cssValueAngle                             = { fg = c.green },
    cssValueTime                              = { fg = c.green },
    cssValueFrequency                         = { fg = c.green },
    cssVendor                                 = { fg = c.base1 },
    cssNoise                                  = { fg = c.base1 },
    -- JavaScript
    javaScriptNull                            = { fg = c.aqua },
    javaScriptIdentifier                      = { fg = c.orange },
    javaScriptParens                          = { fg = c.fg0 },
    javaScriptBraces                          = { fg = c.fg0 },
    javaScriptGlobal                          = { fg = c.yellow },
    javaScriptMessage                         = { fg = c.yellow },
    javaScriptFunction                        = { fg = c.red, italic = options.enable_italics },
    javaScriptOperator                        = { fg = c.orange },
    javaScriptMember                          = { fg = c.aqua },
    -- Python
    pythonBuiltin                             = { fg = c.yellow },
    pythonExceptions                          = { fg = c.yellow },
    pythonDecoratorName                       = { fg = c.blue },
    -- Lua
    luaFunc                                   = { fg = c.green, style = options.styles.bold },
    luaFunction                               = { fg = c.aqua },
    luaTable                                  = { fg = c.fg0 },
    luaIn                                     = { fg = c.red, italic = options.enable_italics },
    -- Go
    goDirective                               = { fg = c.purple, italic = options.enable_italics },
    goConstants                               = { fg = c.aqua },
    goDeclType                                = { fg = c.orange, italic = options.enable_italics },
    -- Rust
    rustStructure                             = { fg = c.orange },
    rustIdentifier                            = { fg = c.purple },
    rustModPath                               = { fg = c.orange },
    rustModPathSep                            = { fg = c.fg0 },
    rustSelf                                  = { fg = c.blue },
    rustSuper                                 = { fg = c.blue },
    rustDeriveTrait                           = { fg = c.purple, italic = options.enable_italics },
    rustEnumVariant                           = { fg = c.purple },
    rustMacroVariable                         = { fg = c.blue },
    rustAssert                                = { fg = c.aqua },
    rustPanic                                 = { fg = c.aqua },
    rustPubScopeCrate                         = { fg = c.purple, italic = options.enable_italics },
    -- PHP
    phpVarSelector                            = { fg = c.blue },
    phpDefine                                 = { fg = c.orange, italic = options.enable_italics },
    phpStructure                              = { fg = c.red, italic = options.enable_italics },
    phpSpecialFunction                        = { fg = c.green, bold = true },
    phpInterpSimpleCurly                      = { fg = c.yellow },
    phpComparison                             = { fg = c.orange },
    phpMethodsVar                             = { fg = c.aqua },
    phpMemberSelector                         = { fg = c.green },
    -- Java
    javaClassDecl                             = { fg = c.red, italic = options.enable_italics },
    javaMethodDecl                            = { fg = c.red, italic = options.enable_italics },
    javaVarArg                                = { fg = c.green },
    javaAnnotation                            = { fg = c.blue },
    javaUserLabel                             = { fg = c.purple },
    javaContant                               = { fg = c.violet },
    javaTypedef                               = { fg = c.aqua },
    javaParen                                 = { fg = c.fg0 },
    javaParen1                                = { fg = c.fg0 },
    javaParen2                                = { fg = c.fg0 },
    javaParen3                                = { fg = c.fg0 },
    javaParen4                                = { fg = c.fg0 },
    javaParen5                                = { fg = c.fg0 },
    -- Ruby
    rubyKeywordAsMethod                       = { fg = c.green, bold = true },
    rubyInterpolation                         = { fg = c.yellow },
    rubyInterpolationDelimiter                = { fg = c.yellow },
    rubyStringDelimiter                       = { fg = c.green },
    rubyBlockParameterList                    = { fg = c.blue },
    rubyDefine                                = { fg = c.red, italic = options.enable_italics },
    rubyModuleName                            = { fg = c.purple },
    rubyAccess                                = { fg = c.orange },
    rubyAttribute                             = { fg = c.yellow },
    rubyMacro                                 = { fg = c.red, italic = options.enable_italics },
    -- sh/zsh
    shRange                                   = { fg = c.fg0 },
    shTestOpr                                 = { fg = c.orange },
    shOption                                  = { fg = c.aqua },
    bashStatement                             = { fg = c.orange },
    shOperator                                = { fg = c.orange },
    shQuote                                   = { fg = c.green },
    shSet                                     = { fg = c.orange },
    shSetList                                 = { fg = c.blue },
    shSnglCase                                = { fg = c.orange },
    shVariable                                = { fg = c.blue },
    shVarAssign                               = { fg = c.orange },
    shCmdSubRegion                            = { fg = c.green },
    shCommandSub                              = { fg = c.orange },
    shFunctionOne                             = { fg = c.green, bold = true },
    shFunctionKey                             = { fg = c.red, italic = options.enable_italics },
    -- ZSH
    zshOptStart                               = { fg = c.purple, italic = options.enable_italics },
    zshOption                                 = { fg = c.blue },
    zshSubst                                  = { fg = c.yellow },
    zshFunction                               = { fg = c.green, bold = true },
    zshDeref                                  = { fg = c.blue },
    zshTypes                                  = { fg = c.orange },
    zshVariableDef                            = { fg = c.blue },
    --  vim
    vimLet                                    = { fg = c.orange },
    vimFunction                               = { fg = c.green, bold = true },
    vimIsCommand                              = { fg = c.fg0 },
    vimUserFunc                               = { fg = c.green, bold = true },
    vimFuncName                               = { fg = c.green, bold = true },
    vimMap                                    = { fg = c.purple, italic = options.enable_italics },
    vimNotation                               = { fg = c.aqua },
    vimMapLhs                                 = { fg = c.green },
    vimMapRhs                                 = { fg = c.green },
    vimSetEqual                               = { fg = c.yellow },
    vimOption                                 = { fg = c.aqua },
    vimUserAttrbKey                           = { fg = c.yellow },
    vimUserAttrb                              = { fg = c.green },
    vimAutoCmdSfxList                         = { fg = c.aqua },
    vimSynType                                = { fg = c.orange },
    vimHiBang                                 = { fg = c.orange },
    vimSet                                    = { fg = c.yellow },
    vimSetSep                                 = { fg = c.base1 },
    vimContinue                               = { fg = c.base1 },
    --Make
    makeIdent                                 = { fg = c.aqua },
    makeSpecTarget                            = { fg = c.yellow },
    makeTarget                                = { fg = c.blue },
    makeCommands                              = { fg = c.orange },
    -- Cmake
    cmakeCommand                              = { fg = c.orange },
    cmakeKWconfigure_package_config_file      = { fg = c.yellow },
    cmakeKWwrite_basic_package_version_file   = { fg = c.yellow },
    cmakeKWExternalProject                    = { fg = c.aqua },
    cmakeKWadd_compile_definitions            = { fg = c.aqua },
    cmakeKWadd_compile_options                = { fg = c.aqua },
    cmakeKWadd_custom_command                 = { fg = c.aqua },
    cmakeKWadd_custom_target                  = { fg = c.aqua },
    cmakeKWadd_definitions                    = { fg = c.aqua },
    cmakeKWadd_dependencies                   = { fg = c.aqua },
    cmakeKWadd_executable                     = { fg = c.aqua },
    cmakeKWadd_library                        = { fg = c.aqua },
    cmakeKWadd_link_options                   = { fg = c.aqua },
    cmakeKWadd_subdirectory                   = { fg = c.aqua },
    cmakeKWadd_test                           = { fg = c.aqua },
    cmakeKWbuild_command                      = { fg = c.aqua },
    cmakeKWcmake_host_system_information      = { fg = c.aqua },
    cmakeKWcmake_minimum_required             = { fg = c.aqua },
    cmakeKWcmake_parse_arguments              = { fg = c.aqua },
    cmakeKWcmake_policy                       = { fg = c.aqua },
    cmakeKWconfigure_file                     = { fg = c.aqua },
    cmakeKWcreate_test_sourcelist             = { fg = c.aqua },
    cmakeKWctest_build                        = { fg = c.aqua },
    cmakeKWctest_configure                    = { fg = c.aqua },
    cmakeKWctest_coverage                     = { fg = c.aqua },
    cmakeKWctest_memcheck                     = { fg = c.aqua },
    cmakeKWctest_run_script                   = { fg = c.aqua },
    cmakeKWctest_start                        = { fg = c.aqua },
    cmakeKWctest_submit                       = { fg = c.aqua },
    cmakeKWctest_test                         = { fg = c.aqua },
    cmakeKWctest_update                       = { fg = c.aqua },
    cmakeKWctest_upload                       = { fg = c.aqua },
    cmakeKWdefine_property                    = { fg = c.aqua },
    cmakeKWdoxygen_add_docs                   = { fg = c.aqua },
    cmakeKWenable_language                    = { fg = c.aqua },
    cmakeKWenable_testing                     = { fg = c.aqua },
    cmakeKWexec_program                       = { fg = c.aqua },
    cmakeKWexecute_process                    = { fg = c.aqua },
    cmakeKWexport                             = { fg = c.aqua },
    cmakeKWexport_library_dependencies        = { fg = c.aqua },
    cmakeKWfile                               = { fg = c.aqua },
    cmakeKWfind_file                          = { fg = c.aqua },
    cmakeKWfind_library                       = { fg = c.aqua },
    cmakeKWfind_package                       = { fg = c.aqua },
    cmakeKWfind_path                          = { fg = c.aqua },
    cmakeKWfind_program                       = { fg = c.aqua },
    cmakeKWfltk_wrap_ui                       = { fg = c.aqua },
    cmakeKWforeach                            = { fg = c.aqua },
    cmakeKWfunction                           = { fg = c.aqua },
    cmakeKWget_cmake_property                 = { fg = c.aqua },
    cmakeKWget_directory_property             = { fg = c.aqua },
    cmakeKWget_filename_component             = { fg = c.aqua },
    cmakeKWget_property                       = { fg = c.aqua },
    cmakeKWget_source_file_property           = { fg = c.aqua },
    cmakeKWget_target_property                = { fg = c.aqua },
    cmakeKWget_test_property                  = { fg = c.aqua },
    cmakeKWif                                 = { fg = c.aqua },
    cmakeKWinclude                            = { fg = c.aqua },
    cmakeKWinclude_directories                = { fg = c.aqua },
    cmakeKWinclude_external_msproject         = { fg = c.aqua },
    cmakeKWinclude_guard                      = { fg = c.aqua },
    cmakeKWinstall                            = { fg = c.aqua },
    cmakeKWinstall_files                      = { fg = c.aqua },
    cmakeKWinstall_programs                   = { fg = c.aqua },
    cmakeKWinstall_targets                    = { fg = c.aqua },
    cmakeKWlink_directories                   = { fg = c.aqua },
    cmakeKWlist                               = { fg = c.aqua },
    cmakeKWload_cache                         = { fg = c.aqua },
    cmakeKWload_command                       = { fg = c.aqua },
    cmakeKWmacro                              = { fg = c.aqua },
    cmakeKWmark_as_advanced                   = { fg = c.aqua },
    cmakeKWmath                               = { fg = c.aqua },
    cmakeKWmessage                            = { fg = c.aqua },
    cmakeKWoption                             = { fg = c.aqua },
    cmakeKWproject                            = { fg = c.aqua },
    cmakeKWqt_wrap_cpp                        = { fg = c.aqua },
    cmakeKWqt_wrap_ui                         = { fg = c.aqua },
    cmakeKWremove                             = { fg = c.aqua },
    cmakeKWseparate_arguments                 = { fg = c.aqua },
    cmakeKWset                                = { fg = c.aqua },
    cmakeKWset_directory_properties           = { fg = c.aqua },
    cmakeKWset_property                       = { fg = c.aqua },
    cmakeKWset_source_files_properties        = { fg = c.aqua },
    cmakeKWset_target_properties              = { fg = c.aqua },
    cmakeKWset_tests_properties               = { fg = c.aqua },
    cmakeKWsource_group                       = { fg = c.aqua },
    cmakeKWstring                             = { fg = c.aqua },
    cmakeKWsubdirs                            = { fg = c.aqua },
    cmakeKWtarget_compile_definitions         = { fg = c.aqua },
    cmakeKWtarget_compile_features            = { fg = c.aqua },
    cmakeKWtarget_compile_options             = { fg = c.aqua },
    cmakeKWtarget_include_directories         = { fg = c.aqua },
    cmakeKWtarget_link_directories            = { fg = c.aqua },
    cmakeKWtarget_link_libraries              = { fg = c.aqua },
    cmakeKWtarget_link_options                = { fg = c.aqua },
    cmakeKWtarget_precompile_headers          = { fg = c.aqua },
    cmakeKWtarget_sources                     = { fg = c.aqua },
    cmakeKWtry_compile                        = { fg = c.aqua },
    cmakeKWtry_run                            = { fg = c.aqua },
    cmakeKWunset                              = { fg = c.aqua },
    cmakeKWuse_mangled_mesa                   = { fg = c.aqua },
    cmakeKWvariable_requires                  = { fg = c.aqua },
    cmakeKWvariable_watch                     = { fg = c.aqua },
    cmakeKWwrite_file                         = { fg = c.aqua },
    -- JSON
    jsonKeyword                               = { fg = c.orange },
    jsonQuote                                 = { fg = c.base1 },
    jsonBraces                                = { fg = c.fg0 },
    -- Yaml
    yamlKey                                   = { fg = c.orange },
    yamlConstant                              = { fg = c.purple },
    -- toml
    tomlKey                                   = { fg = c.orange },
    tomlBoolean                               = { fg = c.aqua },
    tomlTableArray                            = { link = "tomlTable" },
  }

  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end
    -- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  options.on_highlights(theme.highlights, theme.colors)

  return theme
end

return M
