return {
  "elmcgill/springboot-nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-jdtls",
    "nvim-tree/nvim-tree.lua",
  },
  config = function()
    local springboot_nvim = require("springboot-nvim")
    springboot_nvim.setup({})
  end,
}
