return {
  -- { "echasnovski/mini.indentscope", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  {
    "folke/snacks.nvim",
    opts = {
      -- disable indent scope and lines
      indent = {
        enabled = false,
      },
      scope = {
        enabled = false,
      },
    },
  },
}
