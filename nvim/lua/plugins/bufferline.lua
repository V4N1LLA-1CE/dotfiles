return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    vim.opt.termguicolors = true

    require("bufferline").setup({
      options = {
        separator_style = { "", "" },
        show_buffer_close_icons = false,
        show_close_icon = false,
        indicator = {
          style = "underline",
        },
      },
    })
  end,
}
