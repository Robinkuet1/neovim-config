local map = vim.keymap.set

vim.g.maplocalleader = "ö"
vim.g.mapleader = " "

-- some terminal keybindings
-- map('t', '<Esc>', "<C-\\><C-n>")
map('t', '<C-w>', "<C-\\><C-n><C-w>")
map('n', '<LocalLeader>t', '<C-w>v:terminal<CR>', {silent = true})

-- Telescope
map('n', '<leader><leader>', ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", {})
map('n', '<leader>fg', require('telescope.builtin').live_grep, {})
map('n', '<leader>fb', require('telescope.builtin').buffers, {})

--
map("n", "<leader>f", ":Format<CR>")

-- File Tree
map("n", "<leader>ft", ":NvimTreeOpen<CR>")

-- Git
map('n', '<leader>gg', ':LazyGit<CR>')
map('n', '<leader>gf', ':LazyGitFilter<CR>')
map('n', '<leader>gc', ':LazyGitFilterCurrentFile<CR>')

-- Gitlab
require("diffview")
local gitlab = require("gitlab")
map("n", "<leader>glc", gitlab.choose_merge_request)
map("n", "<leader>glp", gitlab.pipeline)
map("n", "<leader>glo", gitlab.summary)
map("n", "<leader>glms", ':lua require("gitlab").merge({squash = true, delete_branch = true})')
map("n", "<leader>glmn", ':lua require("gitlab").merge({squash = false, delete_branch = true})')
