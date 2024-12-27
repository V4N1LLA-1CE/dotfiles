return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- Powerline Separators
    local powerline = {
      right = "\u{e0b0}",
      left = "\u{e0b2}",
      right_filled = "\u{e0b1}",
      left_filled = "\u{e0b3}",
    }

    -- Round Separators
    local round = {
      right = "\u{e0b4}",
      left = "\u{e0b6}",
      right_filled = "\u{e0b5}",
      left_filled = "\u{e0b7}",
    }

    -- Additional Separators
    local extra = {
      block = "\u{2588}",
      vertical = "\u{2502}",
      vertical_thick = "\u{2503}",
      right_triangle = "\u{e0ba}",
      left_triangle = "\u{e0bc}",
      right_semi = "\u{e0bb}",
      left_semi = "\u{e0bd}",
    }

    -- custom theme with transparent middle section
    -- themes:
    -- horizon, everforest, dracula, modus-vivendi, catppuccin, rose-pine
    local custom = require("lualine.themes.horizon") -- !!!change lualine theme here!!!
    custom.normal.c.bg = "none"
    custom.insert.c.bg = "none"
    custom.visual.c.bg = "none"
    custom.replace.c.bg = "none"
    custom.command.c.bg = "none"
    custom.inactive.c.bg = "none"

    -- local custom_nord = {
    --   normal = {
    --     a = { fg = "#2E3440", bg = "#88C0D0" },
    --     b = { fg = "#D8DEE9", bg = "#4C566A" },
    --     c = { fg = "#D8DEE9", bg = "NONE" },
    --   },
    --   inactive = {
    --     a = { fg = "#D8DEE9", bg = "#3B4252" },
    --     b = { fg = "#D8DEE9", bg = "#3B4252" },
    --     c = { fg = "#D8DEE9", bg = "NONE" },
    --   },
    -- }
    --
    -- -- Then copy the base normal mode for other modes
    -- custom_nord.insert = vim.deepcopy(custom_nord.normal)
    -- custom_nord.visual = vim.deepcopy(custom_nord.normal)
    -- custom_nord.replace = vim.deepcopy(custom_nord.normal)
    -- custom_nord.command = vim.deepcopy(custom_nord.normal)
    --
    -- -- Finally override the colors for each mode's section a
    -- custom_nord.insert.a = { fg = "#2E3440", bg = "#A3BE8C" }
    -- custom_nord.visual.a = { fg = "#2E3440", bg = "#B48EAD" }
    -- custom_nord.replace.a = { fg = "#2E3440", bg = "#BF616A" }
    -- custom_nord.command.a = { fg = "#2E3440", bg = "#EBCB8B" }

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = custom,
        component_separators = { left = round.right_filled, right = round.left_filled },
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        },
        section_separators = { left = round.right, right = round.left },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
      },
      sections = {
        lualine_a = { { "mode", separator = { left = round.left, right = round.right } } },
        lualine_b = {
          "filename",
          {
            "branch",
            icon = "\u{f418}",
            colored = true,
          },
        },

        -- center components
        lualine_c = {},
        lualine_x = {},

        lualine_y = { "filetype", "progress" },
        lualine_z = { { "location", separator = { right = round.right, left = round.left } } },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}
