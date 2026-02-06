return {
  "nvim-mini/mini.diff",
  opts = {
    view = {
      -- 'sign' shows bars in gutter only
      -- To also color line numbers, you need to manually toggle overlay with :lua MiniDiff.toggle_overlay()
      style = "sign",
      signs = {
        add = "▎",
        change = "▎",
        delete = "▁",
      },
      priority = 199,
    },
    options = {
      algorithm = "histogram",
      indent_heuristic = true,
      linematch = 60,
    },
  },
  keys = {
    {
      "<leader>go",
      function()
        require("mini.diff").toggle_overlay()
      end,
      desc = "Toggle git diff overlay (line numbers)",
    },
  },
}
