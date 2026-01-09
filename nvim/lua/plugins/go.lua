return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        gopls = {
          settings = {
            gopls = {
              buildFlags = {
                "-tags=integration,unit",
              },
            },
          },
        },
      },
    },
  },
}
