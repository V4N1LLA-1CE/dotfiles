return {
  enabled = true,
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        elixirls = {
          settings = {
            elixirLS = {
              dialyzerEnabled = true,
              fetchDeps = false,
              enableTestLenses = true,
              suggestSpecs = true,
              trace = {
                server = "verbose",
              },
            },
          },
        },
        emmet_language_server = {
          filetypes = { "heex", "eex", "elixir" },
        },
        tailwindcss = {
          filetypes = { "heex", "eex", "elixir" },
          init_options = {
            userLanguages = {
              elixir = "html",
              eex = "html",
              heex = "html",
            },
          },
          settings = {
            tailwindCSS = {
              experimental = {
                classRegex = {
                  'class[:]\\s*"([^"]*)"',
                  'class[=]\\s*"([^"]*)"',
                  '~H""".*?class[=]"([^"]*)".*?"""',
                },
              },
            },
          },
        },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "elixir",
        "heex",
        "eex",
        "surface",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "elixir-ls",
        "tailwindcss-language-server",
        "emmet-language-server",
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        elixir = { "mix" },
        eelixir = { "mix" },
        heex = { "mix" },
      },
      formatters = {
        mix = {
          command = "mix",
          args = { "format", "-" },
          stdin = true,
        },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        elixir = { "credo" },
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "nvim_lsp",
        keyword_length = 1,
      })
    end,
  },
}

