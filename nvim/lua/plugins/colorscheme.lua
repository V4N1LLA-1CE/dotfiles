-- sonokai colors
-- return {
--   {
--     "sainnhe/sonokai",
--     priority = 1000,
--     config = function()
--       vim.g.sonokai_transparent_background = "1"
--       vim.g.sonokai_enable_italic = "1"
--       vim.g.sonokai_style = "andromeda"
--       vim.cmd.colorscheme("sonokai")
--     end,
--   },
-- }

-- nord nvim
-- return {
--   {
--     "shaunsingh/nord.nvim",
--     priority = 1000,
--     config = function()
--       require("lualine").setup({
--         options = {
--           nord_disable_background = false,
--           theme = "nord",
--           nord_italic = true,
--           nord_bold = true,
--           -- ... your lualine config
--         },
--       })
--
--       vim.cmd([[colorscheme nord]])
--     end,
--   },
-- }

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

-- solarized osaka
-- return {
--   "craftzdog/solarized-osaka.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("solarized-osaka").setup({
--       -- your configuration comes here
--       -- or leave it empty to use the default settings
--       transparent = true, -- Enable this to disable setting the background color
--       terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
--       styles = {
--         -- Style to be applied to different syntax groups
--         -- Value is any valid attr-list value for `:help nvim_set_hl`
--         comments = { italic = true },
--         keywords = { italic = true },
--         functions = {},
--         variables = {},
--         -- Background styles. Can be "dark", "transparent" or "normal"
--         sidebars = "transparent", -- style for sidebars, see below
--         floats = "transparent", -- style for floating windows
--       },
--       sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
--       day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
--       hide_inactive_statusline = true, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
--       dim_inactive = false, -- dims inactive windows
--       lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
--
--       --- You can override specific color groups to use other groups or a hex color
--       --- function will be called with a ColorScheme table
--       ---@param colors ColorScheme
--       on_colors = function(colors) end,
--
--       --- You can override specific highlights to use other groups or a hex color
--       --- function will be called with a Highlights and ColorScheme table
--       ---@param highlights Highlights
--       ---@param colors ColorScheme
--       on_highlights = function(highlights, colors) end,
--     })
--     vim.cmd([[colorscheme solarized-osaka]])
--   end,
-- }

-- rose-pine
return {
  "rose-pine/neovim",
  name = "rose-pine",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "auto",
      dark_variant = "main",
      dim_inactive_windows = false,
      extend_background_behind_borders = true,
      enable = {
        terminal = true,
        legacy_highlights = true,
        migrations = true,
      },
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
      groups = {
        border = "muted",
        link = "iris",
        panel = "surface",
        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",
        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",
        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
      },
      highlight_groups = {

        -- Cursor highlights
        Cursor = { fg = "base", bg = "love" },
        iCursor = { fg = "base", bg = "gold" },
        vCursor = { fg = "base", bg = "iris" },
        Cursorline = { bg = "surface", blend = 99 },
        Visual = { bg = "rose", fg = "base" },

        LspReferenceText = { bg = "muted", blend = 98 },
        LspReferenceRead = { bg = "muted", blend = 98 },
        LspReferenceWrite = { bg = "muted", blend = 98 },

        -- Comments (only italic elements)
        Comment = { fg = "muted", italic = true },
        ["@comment"] = { fg = "muted", italic = true },
        -- Keywords and control flow (bold only)
        Keyword = { fg = "pine", bold = true, italic = false },
        ["@keyword"] = { fg = "pine", bold = true, italic = false },
        Conditional = { fg = "pine", bold = true, italic = false },
        ["@conditional"] = { fg = "pine", bold = true, italic = false },
        Repeat = { fg = "pine", bold = true, italic = false },
        ["@repeat"] = { fg = "pine", bold = true, italic = false },
        -- Functions (bold only)
        Function = { fg = "foam", bold = true, italic = false },
        ["@function"] = { fg = "foam", bold = true, italic = false },
        ["@method"] = { fg = "foam", bold = true, italic = false },
        -- Types (bold only)
        Type = { fg = "gold", bold = true, italic = false },
        ["@type"] = { fg = "gold", bold = true, italic = false },
        ["@type.builtin"] = { fg = "gold", bold = true, italic = false },
        -- Variables and parameters (bold only)
        ["@variable"] = { fg = "text", bold = true, italic = false },
        ["@parameter"] = { fg = "rose", bold = true, italic = false },
        -- String and text (bold only)
        String = { fg = "gold", bold = true, italic = false },
        ["@string"] = { fg = "gold", bold = true, italic = false },
        -- Important keywords (bold only)
        Include = { fg = "pine", bold = true, italic = false },
        ["@include"] = { fg = "pine", bold = true, italic = false },
        -- Constants (bold only)
        Constant = { fg = "gold", bold = true, italic = false },
        ["@constant"] = { fg = "gold", bold = true, italic = false },
        ["@constant.builtin"] = { fg = "gold", bold = true, italic = false },
        -- Operators (bold only)
        Operator = { fg = "rose", bold = true, italic = false },
        ["@operator"] = { fg = "rose", bold = true, italic = false },
        -- Diagnostics (underline)
        DiagnosticUnderlineError = { sp = "love", undercurl = true },
        DiagnosticUnderlineWarn = { sp = "gold", undercurl = true },
        DiagnosticUnderlineInfo = { sp = "foam", undercurl = true },
        DiagnosticUnderlineHint = { sp = "iris", undercurl = true },
      },
      before_highlight = function(group, highlight, palette)
        if group == "Cursor" then
          highlight.bold = true
        end
        -- Ensure italics are disabled for all groups except comments
        if group ~= "Comment" and group ~= "@comment" then
          highlight.italic = false
        end
      end,
    })
    -- Set the colorscheme
    vim.cmd("colorscheme rose-pine-main")
    -- Additional cursor settings for better visibility
    vim.opt.cursorline = true
    vim.opt.guicursor = "n-v-c:block-Cursor,i-ci-ve:ver25-iCursor,r-cr:hor20,o:hor50"
  end,
}

-- one dark
-- return {
--   "navarasu/onedark.nvim",
--   priority = 1000,
--   config = function()
--     -- lua
--     require("onedark").setup({
--       -- main options --
--       style = "dark", -- default theme style. choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
--       transparent = true, -- show/hide background
--       term_colors = true, -- change terminal color as per the selected theme style
--       ending_tildes = false, -- show the end-of-buffer tildes. by default they are hidden
--       cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
--
--       -- toggle theme style ---
--       toggle_style_key = nil, -- keybind to toggle theme style. leave it nil to disable it, or set it to a string, for example "<leader>ts"
--       toggle_style_list = { "dark", "darker", "cool", "deep", "warm", "warmer", "light" }, -- list of styles to toggle between
--
--       -- change code style ---
--       -- options are italic, bold, underline, none
--       -- you can configure multiple style with comma separated, for e.g., keywords = 'italic,bold'
--       code_style = {
--         comments = "italic",
--         keywords = "none",
--         functions = "none",
--         strings = "none",
--         variables = "none",
--       },
--
--       -- lualine options --
--       lualine = {
--         transparent = true, -- lualine center bar transparency
--       },
--
--       -- custom highlights --
--       colors = {}, -- override default colors
--       highlights = {}, -- override highlight groups
--
--       -- plugins config --
--       diagnostics = {
--         darker = true, -- darker colors for diagnostic
--         undercurl = true, -- use undercurl instead of underline for diagnostics
--         background = true, -- use background color for virtual text
--       },
--     })
--     vim.cmd("colorscheme onedark")
--   end,
-- }

-- material
-- return {
--   "marko-cerovac/material.nvim",
--   priority = 1000,
--   config = function()
--     require("material").setup({
--       contrast = {
--         terminal = false, -- enable contrast for the built-in terminal
--         sidebars = false, -- enable contrast for sidebar-like windows ( for example nvim-tree )
--         floating_windows = false, -- enable contrast for floating windows
--         cursor_line = false, -- enable darker background for the cursor line
--         lsp_virtual_text = false, -- enable contrasted background for lsp virtual text
--         non_current_windows = false, -- enable contrasted background for non-current windows
--         filetypes = {}, -- specify which filetypes get the contrasted (darker) background
--       },
--
--       styles = { -- give comments style such as bold, italic, underline etc.
--         comments = { --[[ italic = true ]]
--         },
--         strings = { --[[ bold = true ]]
--         },
--         keywords = { --[[ underline = true ]]
--         },
--         functions = { --[[ bold = true, undercurl = true ]]
--         },
--         variables = {},
--         operators = {},
--         types = {},
--       },
--
--       plugins = { -- uncomment the plugins that you use to highlight them
--         -- available plugins:
--         -- "coc",
--         -- "colorful-winsep",
--         -- "dap",
--         -- "dashboard",
--         -- "eyeliner",
--         -- "fidget",
--         -- "flash",
--         -- "gitsigns",
--         -- "harpoon",
--         -- "hop",
--         -- "illuminate",
--         -- "indent-blankline",
--         -- "lspsaga",
--         -- "mini",
--         -- "neogit",
--         -- "neotest",
--         "neo-tree",
--         -- "neorg",
--         -- "noice",
--         -- "nvim-cmp",
--         -- "nvim-navic",
--         -- "nvim-tree",
--         -- "nvim-web-devicons",
--         -- "rainbow-delimiters",
--         -- "sneak",
--         "telescope",
--         -- "trouble",
--         -- "which-key",
--         -- "nvim-notify",
--       },
--       disable = {
--         colored_cursor = true, -- disable the colored cursor
--         borders = false, -- disable borders between vertically split windows
--         background = true, -- prevent the theme from setting the background (neovim then uses your terminal background)
--         term_colors = true, -- prevent the theme from setting terminal colors
--         eob_lines = false, -- hide the end-of-buffer lines
--       },
--
--       high_visibility = {
--         lighter = false, -- enable higher contrast text for lighter style
--         darker = false, -- enable higher contrast text for darker style
--       },
--       lualine_style = "stealth", -- lualine style ( can be 'stealth' or 'default' )
--
--       async_loading = true, -- load parts of the theme asynchronously for faster startup (turned on by default)
--
--       custom_colors = nil, -- if you want to override the default colors, set this to a function
--
--       custom_highlights = {}, -- overwrite highlights with your own
--     })
--     vim.cmd("colorscheme material") -- Make sure to set vim.g.material_style = "deep ocean" in options.lua
--   end,
-- }

-- Dracula (BROKEN)
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
--     "jim-at-jibba/ariake.nvim",
--     config = function()
--       vim.cmd.colorscheme("ariake")
--     end,
--   },
-- }

-- return {
--   "tiagovla/tokyodark.nvim",
--   opts = {
--     -- custom options here
--   },
--   config = function()
--     require("tokyodark").setup({
--       transparent_background = true, -- set background to transparent
--       gamma = 1.00, -- adjust the brightness of the theme
--       styles = {
--         comments = { italic = true }, -- style for comments
--         keywords = { italic = true }, -- style for keywords
--         identifiers = { italic = true }, -- style for identifiers
--         functions = {}, -- style for functions
--         variables = {}, -- style for variables
--       },
--       custom_highlights = {} or function(highlights, palette)
--         return {}
--       end, -- extend highlights
--       custom_palette = {} or function(palette)
--         return {}
--       end, -- extend palette
--       terminal_colors = true, -- enable terminal colors
--     })
--
--     vim.cmd([[colorscheme tokyodark]])
--   end,
-- }

-- return {
--   {
--     "rmehri01/onenord.nvim",
--     priority = 1000,
--     config = function()
--       require("onenord").setup({
--         theme = "dark", -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
--         borders = true, -- Split window borders
--         fade_nc = false, -- Fade non-current windows, making them more distinguishable
--         -- Style that is applied to various groups: see `highlight-args` for options
--         styles = {
--           comments = "italic",
--           strings = "bold",
--           keywords = "bold",
--           functions = "bold",
--           variables = "bold",
--           diagnostics = "underline",
--         },
--         disable = {
--           background = true, -- Disable setting the background color
--           float_background = true, -- Disable setting the background color for floating windows
--           cursorline = false, -- Disable the cursorline
--           eob_lines = true, -- Hide the end-of-buffer lines
--         },
--         -- Inverse highlight for different groups
--         inverse = {
--           match_paren = false,
--         },
--         custom_highlights = {}, -- Overwrite default highlight groups
--         custom_colors = {}, -- Overwrite default colors
--       })
--     end,
--   },
-- }
