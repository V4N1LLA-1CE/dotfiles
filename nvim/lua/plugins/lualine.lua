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
    -- horizon, everforest, dracula, modus-vivendi, catppuccin
    local custom = require("lualine.themes.horizon") -- !!!change lualine theme here!!!
    custom.normal.c.bg = "none"
    custom.insert.c.bg = "none"
    custom.visual.c.bg = "none"
    custom.replace.c.bg = "none"
    custom.command.c.bg = "none"
    custom.inactive.c.bg = "none"

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = custom,
        component_separators = { left = round.right_filled, right = round.left_filled },
        section_separators = { left = round.right, right = round.left },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { { "mode", separator = { left = round.left, right = round.right } } },
        lualine_b = { "filename", "branch" },

        -- center components
        lualine_c = {},
        lualine_x = {},

        lualine_y = { "filetype", "progress" },
        lualine_z = { { "location", separator = { right = round.right, left = round.left }, left_padding = 2 } },
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
