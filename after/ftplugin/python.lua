vim.opt_local.autoindent  = true -- align the new line indent with the previous line
vim.opt_local.expandtab   = true -- insert spaces when hitting TABs
vim.opt_local.shiftround  = true -- round indent to multiple of 'shiftwidth'
vim.opt_local.shiftwidth  = 4    -- operation >> indents 4 columns; << unindents 4 columns
vim.opt_local.softtabstop = 4    -- insert/delete 4 spaces when hitting a TAB/BACKSPACE
vim.opt_local.tabstop     = 4    -- a hard TAB displays as 4 columns

-- Jupyter
vim.g.magma_automatically_open_output = false
vim.g.magma_image_provider = "kitty"
