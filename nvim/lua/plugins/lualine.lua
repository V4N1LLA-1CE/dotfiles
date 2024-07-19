return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local custom_horizon = require("lualine.themes.horizon")
    custom_horizon.normal.c.bg = nil
    custom_horizon.insert.c.bg = nil
    custom_horizon.command.c.bg = nil
    custom_horizon.visual.c.bg = nil

    custom_horizon.normal.a.bg = "#c8c093"
    custom_horizon.insert.a.bg = "#7aa89f"
    custom_horizon.command.a.bg = "#98bb6c"
    custom_horizon.visual.a.bg = "#938aa9"

    custom_horizon.normal.b.fg = "##090618"
    custom_horizon.insert.b.fg = "##090618"
    custom_horizon.visual.b.fg = "##090618"
    custom_horizon.command.b.fg = "##090618"

    require("lualine").setup({
      options = {
        icons_enabled = true,
        theme = custom_horizon,
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
