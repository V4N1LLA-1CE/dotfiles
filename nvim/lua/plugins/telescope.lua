return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    defaults = {
      path_display = { "truncate" },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--glob=!**/.git/*",
        "-g=!**/node_modules/*",
      },
      fuzzy = false, -- Disable fuzzy searching
      search_dirs = { "." },
      file_ignore_patterns = { "node_modules", ".git" },
      generic_sorter = require("telescope.sorters").get_substr_matcher, -- Use substring matcher instead
      file_sorter = require("telescope.sorters").get_substr_matcher, -- Use substring matcher for files too
    },
  },
}
