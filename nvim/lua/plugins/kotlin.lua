return {
  {
    "AlexandrosAlexiou/kotlin.nvim",
    ft = { "kotlin" },
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim",
      "stevearc/oil.nvim",
    },
    config = function()
      require("kotlin").setup({
        root_markers = {
          "gradlew",
          ".git",
          "mvnw",
          "settings.gradle",
          "settings.gradle.kts",
        },
        jre_path = os.getenv("JAVA_HOME"), -- Uncomment if needed
        jvm_args = {
          "-Xmx8g", -- Allocate more memory
        },
      })
    end,
  },
}
