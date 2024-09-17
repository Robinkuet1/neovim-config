local map = vim.keymap.set

vim.g.maplocalleader = "ö"
vim.g.mapleader = " "

-- saving etc.
map("n", "<leader>w", ":w<CR>")
map("n", "<leader>qw", "ZZ")
map("n", "<leader>qq", "ZQ")

-- tmux
map("n", "<C-h>", "<Cmd>TmuxNavigateLeft<CR>")
map("n", "<C-j>", "<Cmd>TmuxNavigateDown<CR>")
map("n", "<C-k>", "<Cmd>TmuxNavigateUp<CR>")
map("n", "<C-l>", "<Cmd>TmuxNavigateRight<CR>")

map("n", "<M-h>", "<Cmd>TmuxResizeLeft<CR>")
map("n", "<M-j>", "<Cmd>TmuxResizeDown<CR>")
map("n", "<M-k>", "<Cmd>TmuxResizeUp<CR>")
map("n", "<M-l>", "<Cmd>TmuxResizeRight<CR>")

-- file navigation
map({'n', 'x', 'o'}, 's',  '<Plug>(leap-forward)')
map({'n', 'x', 'o'}, 'S',  '<Plug>(leap-backward)')
map({'n', 'x', 'o'}, 'gs', '<Plug>(leap-from-window)')

-- some terminal keybindings
-- map('t', '<Esc>', "<C-\\><C-n>")
map('t', '<C-w>', "<C-\\><C-n><C-w>")
map('n', '<LocalLeader>t', '<C-w>v:terminal<CR>', {silent = true})

-- Telescope
map('n', '<leader><leader>', ":lua require('telescope.builtin').find_files({ hidden = true })<CR>", {})
map('n', '<leader>fg', require('telescope.builtin').live_grep, {})
map('n', '<leader>fb', require('telescope.builtin').buffers, {})
map('n', '<leader>p', ":Telescope zoxide list<CR>", {})

-- lsp
map('n', '<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>', {})
map('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', {})
map('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', {})
map('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', {})
map('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', {})
map('n', 'gr', '<Cmd>Lspsaga rename<CR>', {}) 

-- Comments
--[[ 
NORMAL mode
`gcc` - Toggles the current line using linewise comment
`gbc` - Toggles the current line using blockwise comment
`[count]gcc` - Toggles the number of line given as a prefix-count using linewise
`[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
`gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
`gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
VISUAL mode
`gc` - Toggles the region using linewise comment
`gb` - Toggles the region using blockwise Comments
]]

-- File Tree
map("n", "<leader>ft", ":NvimTreeOpen<CR>")

-- Git
map('n', '<leader>gg', ':LazyGit<CR>')
map('n', '<leader>gf', ':LazyGitFilter<CR>')
map('n', '<leader>gc', ':LazyGitFilterCurrentFile<CR>')
