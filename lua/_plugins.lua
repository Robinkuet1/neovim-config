vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- lsp
  use 'neovim/nvim-lspconfig'

  -- code completion
  use "ms-jpq/coq_nvim"

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Bufferlist
  use "roblillack/vim-bufferlist"

  -- Formating
  use "sbdchd/neoformat"

  -- Status Line
  use {
    'hoob3rt/lualine.nvim',
    after = 'nvim-web-devicons',
    config = function() require "plugins/lualine" end
  }

  -- Bufferline
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'}

  -- Indentation Helper
  use "lukas-reineke/indent-blankline.nvim"

  -- Jupyter
  use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }
  use { 'mhartington/formatter.nvim' }

  -- Latex
  use "lervag/vimtex"
end)
