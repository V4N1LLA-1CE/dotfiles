-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>rn", ":IncRename ")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("KanagawaCompile")
  end,
})
