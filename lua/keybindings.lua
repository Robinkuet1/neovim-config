local map = vim.keymap.set

vim.g.maplocalleader = "ö"
vim.g.mapleader = " "

-- some terminal keybindings
map('t', '<Esc>', "<C-\\><C-n>")
map('t', '<C-w>', "<C-\\><C-n><C-w>")
map('n', '<LocalLeader>t', '<C-w>v:terminal<CR>', {silent = true})

-- Telescope
map('n', '<leader><leader>', require('telescope.builtin').find_files, {})
map('n', '<leader>fg', require('telescope.builtin').live_grep, {})
map('n', '<leader>fb', require('telescope.builtin').buffers, {})

-- Python Jupyter
map('n', '<LocalLeader>rr', ':MagmaEvaluateLine<CR>', {silent = true})
map('x', '<LocalLeader>r', ':<C-u>MagmaEvaluateVisual<CR>', {silent = true})
map('n', '<LocalLeader>rc', ':MagmaReevaluateCell<CR>', {silent = true})
map('n', '<LocalLeader>rd', ':MagmaDelete<CR>', {silent = true})
map('n', '<LocalLeader>ro', ':MagmaShowOutput<CR>', {silent = true})
