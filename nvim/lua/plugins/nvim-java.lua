return {
  {
    "nvim-java/nvim-java",
    ft = { "java" },
    dependencies = {
      "nvim-java/lua-async-await",
      "nvim-java/nvim-java-refactor",
      "nvim-java/nvim-java-core",
      "nvim-java/nvim-java-test",
      "nvim-java/nvim-java-dap",
      "MunifTanjim/nui.nvim",
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      {
        "williamboman/mason.nvim",
        opts = {
          registries = {
            "github:nvim-java/mason-registry",
            "github:mason-org/mason-registry",
          },
        },
      },
    },
    config = function()
      -- Set JAVA_HOME to use Mason's OpenJDK 17 for running jdtls
      vim.env.JAVA_HOME = vim.fn.expand("~/.local/share/nvim/mason/packages/openjdk-17/jdk-17.0.2.jdk/Contents/Home")

      require("java").setup({
        root_markers = {
          "settings.gradle",
          "settings.gradle.kts",
          "pom.xml",
          "build.gradle",
          "mvnw",
          "gradlew",
          "build.gradle.kts",
          ".git",
        },
        java_test = {
          enable = true,
        },
        java_debug_adapter = {
          enable = true,
        },
        jdk = {
          auto_install = true,
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {},
      },
      setup = {
        jdtls = function()
          require("lspconfig").jdtls.setup({})
          return true
        end,
      },
    },
  },
}
