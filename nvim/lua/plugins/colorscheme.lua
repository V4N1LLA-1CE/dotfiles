-- tokyonight colors
-- return {
--   "folke/tokyonight.nvim",
--   priority = 1000,
--   config = function()
--     local transparent = true -- set to true if you would like to enable transparency
--
--     local bg = "#011628"
--     local bg_dark = "#011423"
--     local bg_highlight = "#143652"
--     local bg_search = "#0a64ac"
--     local bg_visual = "#275378"
--     local fg = "#cbe0f0"
--     local fg_dark = "#b4d0e9"
--     local fg_gutter = "#627e97"
--     local border = "#547998"
--
--     require("tokyonight").setup({
--       style = "moon",
--       transparent = transparent,
--       styles = {
--         sidebars = transparent and "transparent" or "dark",
--         floats = transparent and "transparent" or "dark",
--       },
--       on_colors = function(colors)
--         colors.bg = bg
--         colors.bg_dark = transparent and colors.none or bg_dark
--         colors.bg_float = transparent and colors.none or bg_dark
--         colors.bg_highlight = bg_highlight
--         colors.bg_popup = bg_dark
--         colors.bg_search = bg_search
--         colors.bg_sidebar = transparent and colors.none or bg_dark
--         colors.bg_statusline = transparent and colors.none or bg_dark
--         colors.bg_visual = bg_visual
--         colors.border = border
--         colors.fg = fg
--         colors.fg_dark = fg_dark
--         colors.fg_float = fg
--         colors.fg_gutter = fg_gutter
--         colors.fg_sidebar = fg_dark
--       end,
--     })
--
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }

-- rose-pine
-- return {
--   "rose-pine/neovim",
--   name = "rose-pine",
--   config = function()
--     vim.cmd("colorscheme rose-pine")
--     require("rose-pine").setup({
--       variant = "main", -- auto, main, moon, or dawn
--       dark_variant = "main", -- main, moon, or dawn
--       dim_inactive_windows = false,
--       extend_background_behind_borders = true,
--       disable_background = true,
--
--       enable = {
--         terminal = true,
--         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
--         migrations = true, -- Handle deprecated options automatically
--       },
--
--       styles = {
--         bold = true,
--         italic = true,
--         transparency = true,
--       },
--
--       groups = {
--         border = "muted",
--         link = "iris",
--         panel = "surface",
--
--         error = "love",
--         hint = "iris",
--         info = "foam",
--         note = "pine",
--         todo = "rose",
--         warn = "gold",
--
--         git_add = "foam",
--         git_change = "rose",
--         git_delete = "love",
--         git_dirty = "rose",
--         git_ignore = "muted",
--         git_merge = "iris",
--         git_rename = "pine",
--         git_stage = "iris",
--         git_text = "rose",
--         git_untracked = "subtle",
--
--         h1 = "iris",
--         h2 = "foam",
--         h3 = "rose",
--         h4 = "gold",
--         h5 = "pine",
--         h6 = "foam",
--       },
--
--       palette = {
--         -- Override the builtin palette per variant
--         -- moon = {
--         --     base = '#18191a',
--         --     overlay = '#363738',
--         -- },
--       },
--
--       highlight_groups = {
--         -- Comment = { fg = "foam" },
--         -- VertSplit = { fg = "muted", bg = "muted" },
--       },
--
--       before_highlight = function(group, highlight, palette)
--         -- Disable all undercurls
--         -- if highlight.undercurl then
--         --     highlight.undercurl = false
--         -- end
--         --
--         -- Change palette colour
--         -- if highlight.fg == palette.pine then
--         --     highlight.fg = palette.foam
--         -- end
--       end,
--     })
--
--     vim.cmd("colorscheme rose-pine")
--     -- vim.cmd("colorscheme rose-pine-main")
--     -- vim.cmd("colorscheme rose-pine-moon")
--     -- vim.cmd("colorscheme rose-pine-dawn")
--   end,
-- }

-- morta
-- return {
--   "philosofonusus/morta.nvim",
--   name = "morta",
--   priority = 1000,
--   opts = {},
--   config = function()
--     vim.cmd.colorscheme("morta")
--
--     -- Make background transparent
--     vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
--     -- Optional: Make sidebar transparent too
--     vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
--
--     -- Make error bg transparent
--     local function make_transparent_bg(group_name)
--       local current_hl = vim.api.nvim_get_hl(0, { name = group_name })
--       vim.api.nvim_set_hl(0, group_name, { fg = current_hl.fg, bg = "NONE" })
--     end
--
--     make_transparent_bg("DiagnosticVirtualTextError")
--     make_transparent_bg("DiagnosticVirtualTextWarn")
--     make_transparent_bg("DiagnosticVirtualTextInfo")
--     make_transparent_bg("DiagnosticVirtualTextHint")
--   end,
-- }

-- xcode theme
return {
  {
    "arzg/vim-colors-xcode",
    priority = 1000,
    config = function()
      -- Set the colorscheme
      vim.cmd("colorscheme xcodedark")
      -- Enable terminal GUI colors
      vim.opt.termguicolors = true
      -- Function to make highlights transparent
      local function make_transparent(group)
        vim.api.nvim_set_hl(0, group, { bg = "NONE", ctermbg = "NONE" })
      end
      -- Basic editor elements
      local transparent_groups = {
        "Normal",
        "NormalFloat",
        "NormalNC", -- Non-current windows
        "SignColumn",
        "EndOfBuffer",
        "CursorLine",
        "ColorColumn",
        "VertSplit",
        "StatusLine",
        "StatusLineNC",
        "LineNr",
        "CursorLineNr",
        "Folded",
        "FoldColumn",
      }
      -- Plugin-specific elements
      local plugin_groups = {
        -- FZF
        "FzfLuaNormal",
        "FzfLuaBorder",
        "FzfLuaPreviewNormal",
        "FzfLuaPreviewBorder",
        -- Treesitter
        -- "TreesitterContext",
        -- "TreesitterContextLineNumber",
        -- Neo-tree
        -- "NeoTreeNormal",
        -- "NeoTreeNormalNC",
        -- "NeoTreeFloatBorder",
        -- "NeoTreeFloatTitle",
        -- Which-key
        "WhichKeyFloat",
        "WhichKeyBorder",
        -- Telescope
        -- "TelescopeNormal",
        -- "TelescopeBorder",
        -- "TelescopePrompt",
        -- "TelescopeResults",
        -- "TelescopePreview",
        -- "TelescopeTitle",
        -- LSP
        "LspFloatWinNormal",
        "LspFloatWinBorder",
        "DiagnosticFloat",
        -- Completion menu
        -- "Pmenu",
        -- "PmenuSel",
        -- "PmenuSbar",
        -- "PmenuThumb",
        -- Floating windows
        "FloatBorder",
        "FloatTitle",
        -- Notify
        "NotifyBackground",
        -- Bufferline
        "BufferLineTabClose",
        "BufferlineBufferSelected",
        "BufferLineFill",
        "BufferLineBackground",
        "BufferLineSeparator",
        "BufferLineIndicatorSelected",
      }
      -- Apply transparency to all groups
      for _, group in ipairs(transparent_groups) do
        make_transparent(group)
      end
      for _, group in ipairs(plugin_groups) do
        make_transparent(group)
      end
      -- Cursor styling
      vim.api.nvim_set_hl(0, "Cursor", {
        bg = "#FFB3CC", -- Xcode pink cursor
        fg = "NONE", -- Don't change text color
      })
      -- Set cursor options
      vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-iCursor,r-cr:hor20,o:hor50"
      -- Configure yank highlight
      vim.api.nvim_set_hl(0, "IncSearch", {
        bg = "#FFB3CC",
        fg = "#000000", -- Black text for better contrast
      })
      -- Configure matching bracket highlight
      vim.api.nvim_set_hl(0, "MatchParen", {
        fg = "#FFB3CC", -- Xcode pink
        bg = "NONE", -- Slightly darker pink background
        bold = true, -- Bold text
        nocombine = true, -- Ensure effects are applied
      })
      -- Set floating window and popup menu transparency
      vim.opt.winblend = 0 -- Set to 0 for full transparency
      vim.opt.pumblend = 0 -- Set to 0 for full transparency
      -- Optional: Adjust specific syntax highlighting
      vim.api.nvim_set_hl(0, "Comment", { fg = "#7F8C98", italic = true })
      vim.api.nvim_set_hl(0, "Function", { bold = true })
      -- Completion menu styling for Neovim
      -- Main completion menu background
      vim.api.nvim_set_hl(0, "Pmenu", {
        bg = "#191724", -- Base background
        fg = "#e0def4", -- Text color
        bold = false,
        bg_indexed = true,
      })
      -- Selected item in completion menu
      vim.api.nvim_set_hl(0, "PmenuSel", {
        bg = "#2a2837", -- Overlay background
        fg = "#ebbcba", -- Rose color for selected text
        bold = true,
      })
      -- Scrollbar
      vim.api.nvim_set_hl(0, "PmenuSbar", {
        bg = "#26233a", -- Subtle highlight background
      })
      -- Scrollbar thumb
      vim.api.nvim_set_hl(0, "PmenuThumb", {
        bg = "#6e6a86", -- Muted color for scrollbar
      })
    end,
  },
}

-- dracula
-- return {
--   "Mofiqul/dracula.nvim",
--   priority = 1000,
--   config = function()
--     require("dracula").setup({
--       -- customize dracula color palette
--       colors = {
--         bg = "#282A36",
--         fg = "#F8F8F2",
--         selection = "#44475A",
--         comment = "#6272A4",
--         red = "#FF5555",
--         orange = "#FFB86C",
--         yellow = "#F1FA8C",
--         green = "#50fa7b",
--         purple = "#BD93F9",
--         cyan = "#8BE9FD",
--         pink = "#FF79C6",
--         bright_red = "#FF6E6E",
--         bright_green = "#69FF94",
--         bright_yellow = "#FFFFA5",
--         bright_blue = "#D6ACFF",
--         bright_magenta = "#FF92DF",
--         bright_cyan = "#A4FFFF",
--         bright_white = "#FFFFFF",
--         menu = "#21222C",
--         visual = "#3E4452",
--         gutter_fg = "#4B5263",
--         nontext = "#3B4048",
--         white = "#ABB2BF",
--         black = "#191A21",
--       },
--       -- show the '~' characters after the end of buffers
--       show_end_of_buffer = true, -- default false
--       -- use transparent background
--       transparent_bg = true, -- default false
--       transparent = true,
--       -- set custom lualine background color
--       lualine_bg_color = "nil", -- default nil
--
--       -- set italic comment
--       italic_comment = true, -- default false
--       -- overrides the default highlights with table see `:h synIDattr`
--       overrides = {
--         Normal = { bg = "None" },
--         TelescopeNormal = { bg = "none" },
--       },
--       -- You can use overrides as table like this
--       -- overrides = {
--       --   NonText = { fg = "white" }, -- set NonText fg to white
--       --   NvimTreeIndentMarker = { link = "NonText" }, -- link to NonText highlight
--       --   Nothing = {} -- clear highlight of Nothing
--       -- },
--       -- Or you can also use it like a function to get color from theme
--       -- overrides = function (colors)
--       --   return {
--       --     NonText = { fg = colors.white }, -- set NonText fg to white of theme
--       --   }
--       -- end,
--     })
--     vim.cmd("colorscheme dracula")
--   end,
-- }

-- kanagawa
-- return {
--   "rebelot/kanagawa.nvim",
--   config = function()
--     -- Default options:
--     require("kanagawa").setup({
--       compile = true, -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = true, -- do not set background color
--       dimInactive = false, -- dim inactive window `:h hl-NormalNC`
--       terminalColors = true, -- define vim.g.terminal_color_{0,17}
--       colors = {
--         theme = {
--           all = {
--             ui = {
--               bg_gutter = "none",
--             },
--           },
--         },
--       },
--
--       overrides = function(colors) -- add/modify highlights
--         local theme = colors.theme
--         return {
--           NormalFloat = { bg = "none" },
--           FloatBorder = { bg = "none" },
--           FloatTitle = { bg = "none" },
--
--           -- Save an hlgroup with dark background and dimmed foreground
--           -- so that you can use it where your still want darker windows.
--           -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
--           NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
--
--           LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--           MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
--           TelescopeTitle = { fg = theme.ui.special, bold = true },
--           TelescopePromptNormal = { bg = "none" },
--           TelescopePromptBorder = { fg = "none", bg = "none" },
--           TelescopeResultsNormal = { fg = "none", bg = "none" },
--           TelescopeResultsBorder = { fg = "none", bg = "none" },
--           TelescopePreviewNormal = { bg = "none" },
--           TelescopePreviewBorder = { bg = "none", fg = "none" },
--         }
--       end,
--       theme = "wave", -- Load "wave" theme when 'background' option is not set
--       background = { -- map the value of 'background' option to a theme
--         dark = "wave", -- try "dragon" !
--         light = "lotus",
--       },
--     })
--
--     -- setup must be called before loading
--     vim.cmd("colorscheme kanagawa-wave")
--   end,
-- }

-- return {
--   {
--     "shaunsingh/nord.nvim",
--     priority = 1000,
--     config = function()
--       -- Nord theme configuration
--       vim.g.nord_contrast = true
--       vim.g.nord_borders = false
--       vim.g.nord_disable_background = true
--       vim.g.nord_italic = true
--       vim.g.nord_uniform_diff_background = true
--       vim.g.nord_bold = true
--
--       -- Load the colorscheme
--       require("nord").set()
--
--       -- Additional theme customizations
--       local custom_highlights = {
--         -- Customize line numbers
--         LineNr = { fg = "#616E88" },
--         Visual = { bg = "#ADD8E6", fg = "#000000" },
--
--         -- Fix general transparency issues
--         Normal = { bg = "NONE" },
--         SignColumn = { bg = "NONE" },
--         EndOfBuffer = { bg = "NONE" },
--         StatusLine = { bg = "NONE" },
--         StatusLineNC = { bg = "NONE" },
--         VertSplit = { bg = "NONE" },
--         Folded = { bg = "NONE" },
--
--         -- Remove selection backgrounds
--         NeoTreeCursorLine = { bg = "NONE", fg = "#88C0D0" },
--         TelescopeSelection = { bg = "NONE", fg = "#88C0D0" },
--         TelescopeSelectionCaret = { bg = "NONE", fg = "#88C0D0" },
--         -- Telescope borders with Nord blue
--         TelescopeBorder = { fg = "#81A1C1" },
--         TelescopePromptBorder = { fg = "#81A1C1" },
--         TelescopeResultsBorder = { fg = "#81A1C1" },
--         TelescopePreviewBorder = { fg = "#81A1C1" },
--
--         -- Enhanced visibility for matching parentheses
--         MatchParen = { fg = "#88C0D0", bold = true },
--
--         -- LSP Reference highlights
--         LspReferenceText = { bg = "NONE" },
--         LspReferenceRead = { bg = "NONE" },
--         LspReferenceWrite = { bg = "NONE" },
--
--         -- floats
--         NormalFloat = { bg = "NONE", fg = "#81A1C1" },
--         FloatBorder = { bg = "NONE", fg = "#81A1C1" },
--
--         -- LSP suggestion improvements with transparency and border
--         -- Pmenu = { bg = "NONE", fg = "#D8DEE9", blend = 10 },
--         PmenuSel = { bg = "#3B4252", fg = "#88C0D0" },
--         PmenuSbar = { bg = "NONE" },
--         PmenuThumb = { bg = "#4C566A" },
--
--         CmpItemAbbr = { fg = "#D8DEE9" },
--         CmpItemAbbrMatch = { fg = "#88C0D0", bold = true },
--         CmpItemAbbrMatchFuzzy = { fg = "#88C0D0", bold = true },
--         CmpItemMenu = { fg = "#81A1C1" },
--         CmpItemKind = { fg = "#81A1C1" },
--       }
--
--       vim.api.nvim_set_hl(0, "snippetTabstop", { bg = "NONE" })
--
--       -- LSP suggestion improvements
--       for group, colors in pairs(custom_highlights) do
--         vim.api.nvim_set_hl(0, group, colors)
--       end
--
--       vim.cmd([[
--         set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,o:hor50-Cursor/lCursor
--         highlight! Cursor guifg=#2E3440 guibg=#98FF98 gui=NONE cterm=NONE
--         highlight! link iCursor Cursor
--         highlight! link vCursor Cursor
--         highlight! link lCursor Cursor
--       ]])
--       vim.opt.guicursor =
--         "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,o:hor50-Cursor/lCursor"
--     end,
--   },
-- }

-- catppuccin
-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     lazy = false,
--     config = function()
--       require("catppuccin").setup({
--         flavour = "mocha", -- Can be: mocha, macchiato, frappe, or latte
--         transparent_background = true, -- Enable transparency
--         float_background = false, -- Make floating windows transparent
--         integrations = {
--           neotree = true,
--         },
--         highlight_overrides = {
--           all = function(colors)
--             return {
--               NeoTreeNormal = { bg = "NONE" },
--               NeoTreeNormalNC = { bg = "NONE" },
--             }
--           end,
--         },
--       })
--       vim.cmd([[colorscheme catppuccin]])
--       vim.cmd([[
--         set guicursor=n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,o:hor50-Cursor/lCursor
--         highlight! Cursor guifg=#1E1E2E guibg=#F5E0DC gui=NONE cterm=NONE
--         highlight! link iCursor Cursor
--         highlight! link vCursor Cursor
--         highlight! link lCursor Cursor
--       ]])
--     end,
--   },
-- }

-- horizon
-- return {
--   "lunarvim/horizon.nvim",
--   priority = 1000,
--   config = function()
--     -- Set the colorscheme to horizon
--     vim.cmd([[colorscheme horizon]])
--
--     -- Function to set transparency
--     local set_transparency = function()
--       local transparent_groups = {
--         "Normal",
--         "NormalNC",
--         "NormalFloat",
--         "EndOfBuffer",
--         "SignColumn",
--         "StatusLine",
--         "StatusLineNC",
--         "VertSplit",
--         "WinSeparator",
--
--         -- NeoTree
--         "NeoTreeNormal",
--         "NeoTreeNormalNC",
--         "NeoTreeRootName",
--         "NeoTreeDirectoryName",
--
--         -- Telescope
--         "TelescopeNormal",
--         "TelescopeBorder",
--         "TelescopePromptNormal",
--         "TelescopePromptBorder",
--         "TelescopeResultsNormal",
--         "TelescopeResultsBorder",
--
--         -- FZF (Pmenu-related)
--         -- "Pmenu",
--         -- "PmenuSel",
--         -- "PmenuSbar",
--         -- "PmenuThumb",
--
--         -- Mason
--         -- "MasonNormal",
--         -- "MasonHeader",
--         -- "MasonHeading",
--
--         -- WhichKey
--         "WhichKey",
--         "WhichKeySeperator",
--         "WhichKeyGroup",
--         "WhichKeyDesc",
--         "WhichKeyValue",
--       }
--
--       for _, group in ipairs(transparent_groups) do
--         vim.cmd(string.format("hi %s guibg=NONE ctermbg=NONE", group))
--       end
--     end
--
--     -- Updated Visual highlight to use a darker grey that matches Horizon theme
--     vim.cmd([[hi Visual guibg=#313244 guifg=NONE ctermbg=NONE ctermfg=NONE]])
--     vim.cmd([[hi CursorLine guibg=#2e303e]])
--
--     -- yank
--     vim.api.nvim_create_autocmd("TextYankPost", {
--       pattern = "*",
--       callback = function()
--         vim.highlight.on_yank({ higroup = "IncSearch", timeout = 200 })
--       end,
--     })
--
--     vim.opt.pumblend = 0
--
--     -- Enable true color support in Vim
--     vim.cmd([[set termguicolors]])
--     -- yank color
--     vim.cmd([[hi IncSearch guibg=#e95678 guifg=#000000]])
--
--     -- Add selective bold and italic styles
--     vim.cmd([[hi Comment gui=italic cterm=italic]]) -- Comments italicized
--     vim.cmd([[hi Keyword gui=italic cterm=italic]]) -- Keywords italicized
--     vim.cmd([[hi Function gui=bold cterm=bold]]) -- Functions bold
--     vim.cmd([[hi Type gui=bold cterm=bold]]) -- Types bold
--     vim.cmd([[hi String gui=italic cterm=italic]]) -- Strings italicized
--     vim.cmd([[hi Conditional gui=italic cterm=italic]]) -- Conditional italicized
--     vim.cmd([[hi Title gui=bold cterm=bold]]) -- Titles bold
--     vim.cmd([[hi Include gui=italic cterm=italic]]) -- Include/import italicized
--     vim.cmd([[hi Define gui=italic cterm=italic]]) -- Preprocessor macros italicized
--
--     -- Fix Lazy.nvim selection highlights
--     vim.cmd([[hi LazyH1 guifg=#e95678 gui=bold]])
--     vim.cmd([[hi LazyButton guibg=#2e303e]])
--     vim.cmd([[hi LazyButtonActive guibg=#e95678 guifg=#1C1E26 gui=bold]])
--     vim.cmd([[hi LazySpecial guifg=#fab795]])
--
--     -- Enhance NeoTree colors
--     vim.cmd([[hi NeoTreeFileName guifg=#fab795]]) -- Horizon yellow for filenames
--     vim.cmd([[hi NeoTreeDirectoryName guifg=#e95678 gui=bold]]) -- Horizon red for directory names
--     vim.cmd([[hi NeoTreeRootName guifg=#e95678 gui=bold]]) -- Horizon red for root directory
--     vim.cmd([[hi NeoTreeGitModified guifg=#fab795]])
--     vim.cmd([[hi NeoTreeGitAdded guifg=#29D398]])
--     vim.cmd([[hi NeoTreeGitDeleted guifg=#e95678]])
--
--     -- Fix NeoTree icons and prompts with transparent background
--     vim.cmd([[hi NeoTreeDirectoryIcon guifg=#e95678]])
--     vim.cmd([[hi NeoTreeFileIcon guifg=#fab795]])
--     vim.cmd([[hi NeoTreeTitleBar guibg=#e95678 gui=bold]]) -- Specific to NeoTree title bar
--
--     -- Floating window and prompt highlights with transparent background
--     vim.cmd([[hi NeoTreeFloatBorder guifg=#e95678 guibg=NONE]])
--     vim.cmd([[hi NeoTreeFloatTitle guifg=#e95678 guibg=NONE gui=bold]])
--     vim.cmd([[hi NeoTreeFloatNormal guifg=#fab795 guibg=NONE]])
--     vim.cmd([[hi NeoTreePrompt guifg=#fab795 guibg=NONE]])
--     vim.cmd([[hi NeoTreePromptNormal guifg=#fab795 guibg=NONE]])
--     vim.cmd([[hi FloatTitle guifg=#e95678 guibg=NONE gui=bold]])
--     vim.cmd([[hi FloatBorder guifg=#e95678 guibg=NONE]])
--     vim.cmd([[hi FocusedSymbol guifg=#fab795 guibg=NONE]])
--
--     vim.opt.completeopt = "menuone,noinsert,noselect"
--
--     vim.g.completion_enable_auto_popup = 1
--     vim.g.completion_enable_auto_hover = 1
--     vim.g.completion_enable_snippet = "UltiSnips"
--     vim.g.completion_matching_strategy_list = { "exact", "substring", "fuzzy" }
--     vim.g.completion_trigger_on_delete = 1
--
--     -- Set floating window border
--     vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, {
--       border = "single",
--     })
--     vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, {
--       border = "single",
--     })
--     -- yellow float borders
--     vim.cmd([[hi FloatBorder guifg=#fab795]])
--
--     -- autocomplete menu
--     vim.cmd([[hi Pmenu guibg=#0F111A guifg=#e0e0e0]])
--     vim.cmd([[hi PmenuBorder guifg=#2e303e]])
--     vim.cmd([[hi PmenuSel guibg=#e95678 guifg=#fab795 gui=bold]])
--     vim.cmd([[hi PmenuSelBorder guifg=#fab795]])
--     vim.cmd([[hi PmenuSbar guibg=#2e303e guifg=#2e303e]])
--     vim.cmd([[hi PmenuThumb guibg=#6c6f93]])
--
--     vim.cmd([[hi CursorLine guibg=#2e303e]])
--
--     vim.opt.pumblend = 0
--     vim.opt.winblend = 0
--
--     vim.opt.guicursor = "n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor/lCursor,r-cr:hor20,o:hor50"
--     vim.cmd([[hi Cursor guifg=#0F111A guibg=#fab795]]) -- Peach color from horizon
--     vim.cmd([[hi iCursor guifg=#0F111A guibg=#fab795]])
--     vim.cmd([[hi vCursor guifg=#0F111A guibg=#fab795]])
--     vim.cmd([[hi lCursor guifg=#0F111A guibg=#fab795]])
--
--     vim.cmd([[hi MsgArea guibg=NONE ctermbg=NONE]])
--     vim.cmd([[hi CommandMode guibg=NONE ctermbg=NONE]])
--     vim.cmd([[hi MsgSeparator guibg=NONE ctermbg=NONE]])
--     vim.cmd([[hi NormalNC guibg=NONE ctermbg=NONE]])
--     vim.cmd([[hi MessageWindow guibg=NONE ctermbg=NONE]])
--     vim.cmd([[hi Search guibg=NONE guifg=#fab795 gui=underline blend=0]])
--     vim.cmd([[hi CmdLine guibg=NONE ctermbg=NONE]])
--
--     -- Apply transparency
--     set_transparency()
--
--     -- Ensure transparency is applied after plugin setups
--     vim.api.nvim_create_autocmd("ColorScheme", {
--       pattern = "*",
--       callback = function()
--         set_transparency()
--       end,
--     })
--   end,
-- }
