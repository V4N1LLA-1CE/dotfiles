return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      java = { "google-java-format" },
      xml = { "xmllint" },
    },
    formatters = {
      ["google-java-format"] = {
        command = vim.fn.stdpath("data") .. "/mason/bin/google-java-format",
        args = { "-" },
        stdin = true,
      },
    },
  },
}
