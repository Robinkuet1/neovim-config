vim.opt.mouse        = 'n'
vim.opt.relativenumber = true
vim.opt.number = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.cmd [[cnoremap <expr> <CR> getcmdtype() == ":" && index(["q", "wq", "q!"], getcmdline()) >= 0 ? "<C-u>" : "<CR>"]]
