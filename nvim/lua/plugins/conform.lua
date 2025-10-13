return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
    },
    formatters = {
      ["google-java-format"] = {
        command = vim.fn.stdpath("data") .. "/mason/bin/google-java-format",
        args = { "-" },
        stdin = true,
      },
    },
    -- Disable LSP formatting for Java (use google-java-format instead)
    format_on_save = {
      lsp_format = "fallback",
    },
  },
}
