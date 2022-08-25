local onedark = require 'onedark'

onedark.setup {
  -- Main options --
  style = 'warm', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true, -- Show/hide background
  term_colors = true, -- Change terminal color as per the selected theme style
  ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

  -- toggle theme style ---
  toggle_style_key = '<leader>ts', -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
  toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

  -- Change code style ---
  -- Options are italic, bold, underline, none
  -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none',
  },

  -- Custom Highlights --
  colors = {}, -- Override default colors
  highlights = {
    Directory = { fg = '$green' },

    Staline = { fg = '$yellow' },
    StalineFilename = { fg = '$red' },

    NvimTreeFolderName = { fg = '$green', fmt = 'bold' },
    -- NvimTreeRootFolder = { fg = '$green' },
    NvimTreeFolderIcon = { fg = '$green', fmt = 'bold' },
    NvimTreeEmptyFolderName = { fg = '$green', fmt = 'bold' },
    NvimTreeOpenedFolderName = { fg = '$green', fmt = 'bold' },

    NvimTreeNormal = { bg = '$bg_d' },
    NvimTreeWinSeparator = { bg = '$none', fg = '$bg3' },

    NvimTreeEndOfBuffer = { bg = '$bg_d' },

    TelescopeBorder = { fg = '$yellow' },
    TelescopePromptPrefix = { fg = '$yellow' },
    TelescopePromptBorder = { fg = '$yellow' },
    TelescopeResultsBorder = { fg = '$yellow' },
    TelescopePreviewBorder = { fg = '$yellow' },

    DiagnosticError = { fg = '$red' },
    DiagnosticHint = { fg = '$blue' },
    DiagnosticInfo = { fg = '$cyan' },
    DiagnosticWarn = { fg = '$orange' },
    DiagnosticVirtualTextError = { fg = '$red' },
    DiagnosticVirtualTextHint = { fg = '$blue' },
    DiagnosticVirtualTextInfo = { fg = '$cyan' },
    DiagnosticVirtualTextWarn = { fg = '$orange' },

    FloatBorder = { bg = '$none' },
    NormalFloat = { bg = '$none' },

    javascriptTSConditional = { fg = '$orange' },
    javascriptTSConstant = { fg = '$fg' },
    javascriptTSConstructor = { fg = '$none' },
    javascriptTSFunction = { fg = '$yellow' },
    javascriptTSInclude = { fg = '$orange' },
    javascriptTSKeyword = { fg = '$orange' },
    javascriptTSKeywordFunction = { fg = '$orange' },
    javascriptTSKeywordReturn = { fg = '$orange' },
    javascriptTSNumber = { fg = '$purple' },
    javascriptTSOperator = { fg = '$orange' },
    javascriptTSParameter = { fg = '$purple' },
    javascriptTSPunctBracket = { fg = '$fg' },
    javascriptTSTag = { fg = '$cyan' },
    javascriptTSTagAttribute = { fg = '$orange' },
    javascriptTSTagDelimiter = { fg = '$cyan' },
    javascriptTSVariable = { fg = '$fg' },
  }, -- Override highlight groups

  -- Plugins Config --
  diagnostics = {
    darker = true, -- darker colors for diagnostic
    undercurl = true, -- use undercurl instead of underline for diagnostics
    background = true, -- use background color for virtual text
  },
}

onedark.load()
