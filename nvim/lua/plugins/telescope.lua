return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
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
        fuzzy = false,
        search_dirs = { "." },
        file_ignore_patterns = { "node_modules", ".git" },
        generic_sorter = require("telescope.sorters").get_substr_matcher,
        file_sorter = require("telescope.sorters").get_substr_matcher,
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
  end,
}
