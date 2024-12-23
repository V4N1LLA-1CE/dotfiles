return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- local custom_rosepine = require("lualine.themes.horizon")

    -- Rose Pine colors
    -- local colors = {
    --   base = "#191724",
    --   surface = "#1f1d2e",
    --   overlay = "#26233a",
    --   muted = "#6e6a86",
    --   subtle = "#908caa",
    --   text = "#e0def4",
    --   love = "#eb6f92",
    --   gold = "#f6c177",
    --   rose = "#ebbcba",
    --   pine = "#31748f",
    --   foam = "#9ccfd8",
    --   iris = "#c4a7e7",
    -- }

    -- Setting nils and colors for each mode
    -- custom_rosepine.normal.c.bg = nil
    -- custom_rosepine.insert.c.bg = nil
    -- custom_rosepine.command.c.bg = nil
    -- custom_rosepine.visual.c.bg = nil
    -- custom_rosepine.normal.c.fg = colors.muted -- Using muted for regular text
    -- custom_rosepine.insert.c.fg = colors.muted
    -- custom_rosepine.command.c.fg = colors.muted
    -- custom_rosepine.visual.c.fg = colors.muted
    --
    -- custom_rosepine.normal.a.bg = colors.iris
    -- custom_rosepine.insert.a.bg = colors.love
    -- custom_rosepine.command.a.bg = colors.foam
    -- custom_rosepine.visual.a.bg = colors.gold
    --
    -- custom_rosepine.normal.b.bg = "#191724"
    -- custom_rosepine.insert.b.bg = "#191724"
    -- custom_rosepine.visual.b.bg = "#191724"
    -- custom_rosepine.command.b.bg = "#191724"
    --
    -- custom_rosepine.normal.b.fg = colors.iris
    -- custom_rosepine.insert.b.fg = colors.love
    -- custom_rosepine.visual.b.fg = colors.gold
    -- custom_rosepine.command.b.fg = colors.foam

    -- local custom_horizon = require("lualine.themes.horizon")
    -- custom_horizon.normal.c.bg = nil
    -- custom_horizon.insert.c.bg = nil
    -- custom_horizon.command.c.bg = nil
    -- custom_horizon.visual.c.bg = nil
    --
    -- custom_horizon.normal.c.fg = "#5e81ac"
    -- custom_horizon.insert.c.fg = "#5e81ac"
    -- custom_horizon.command.c.fg = "#5e81ac"
    -- custom_horizon.visual.c.fg = "#5e81ac"
    --
    -- custom_horizon.normal.a.bg = "#b48ead"
    -- custom_horizon.insert.a.bg = "#ebcb8b"
    -- custom_horizon.command.a.bg = "#44ffb1"
    -- custom_horizon.visual.a.bg = "#eceff4"
    --
    -- custom_horizon.normal.b.bg = nil
    -- custom_horizon.insert.b.bg = nil
    -- custom_horizon.visual.b.bg = nil
    -- custom_horizon.command.b.bg = nil
    --
    -- custom_horizon.normal.b.fg = "#8fbcbb"
    -- custom_horizon.insert.b.fg = "#8fbcbb"
    -- custom_horizon.visual.b.fg = "#8fbcbb"
    -- custom_horizon.command.b.fg = "#8fbcbb"

    -- custom_horizon.normal.a.bg = "#c8c093"
    -- custom_horizon.insert.a.bg = "#7aa89f"
    -- custom_horizon.command.a.bg = "#98bb6c"
    -- custom_horizon.visual.a.bg = "#938aa9"
    --
    -- custom_horizon.normal.b.bg = "#090618"
    -- custom_horizon.insert.b.bg = "#090618"
    -- custom_horizon.visual.b.bg = "#090618"
    -- custom_horizon.command.b.bg = "#090618"
    --
    -- custom_horizon.normal.b.fg = "#dcd7ba"
    -- custom_horizon.insert.b.fg = "#dcd7ba"
    -- custom_horizon.visual.b.fg = "#dcd7ba"
    -- custom_horizon.command.b.fg = "#dcd7ba"

    -- custom_horizon.normal.a.bg = "#FFE073"
    -- custom_horizon.insert.a.bg = "#44ffb1"
    -- custom_horizon.command.a.bg = "#cbe0f0"
    -- custom_horizon.visual.a.bg = "#a277ff"
    --
    -- custom_horizon.normal.b.fg = "#24EAF7"
    -- custom_horizon.insert.b.fg = "#24EAF7"
    -- custom_horizon.visual.b.fg = "#24EAF7"
    -- custom_horizon.command.b.fg = "#24EAF7"
    --
    -- custom_horizon.normal.b.bg = "#090618"
    -- custom_horizon.insert.b.bg = "#090618"
    -- custom_horizon.visual.b.bg = "#090618"
    -- custom_horizon.command.b.bg = "#090618"

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
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
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}
