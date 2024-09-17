local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- tmux
  use "christoomey/vim-tmux-navigator"
  use 'RyanMillerC/better-vim-tmux-resizer'

  -- colortheme
  use 'navarasu/onedark.nvim'

  -- treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
    'nvim-tree/nvim-web-devicons', -- optional
    },
  }
  
  -- file navigation
  use {
    "ggandor/leap.nvim",
    requires = {
      "tpope/vim-repeat"
    }
  }

  -- lsp
  use "neovim/nvim-lspconfig"
  use "onsails/lspkind.nvim"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/nvim-cmp"
  use "nvimdev/lspsaga.nvim"

  -- formating
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'MunifTanjim/prettier.nvim'

  -- comments
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }

  -- comment annotations
  use {
    "danymat/neogen",
    config = function()
        require('neogen').setup {}
    end,
  }

  -- trouble
  use {
    "folke/trouble.nvim",
    cmd = "Trouble"
  }

  -- snippets
  use({
	  "L3MON4D3/LuaSnip",
	  -- follow latest release.
	  tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	  -- install jsregexp (optional!:).
	  run = "make install_jsregexp"
  })

  -- html autotag
  use "windwp/nvim-ts-autotag"

  -- autopairs
  use "windwp/nvim-autopairs"

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- telescope zoxide
  use "jvgrootveld/telescope-zoxide"

  -- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }

  -- lazygit
  use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",
    },
  })

  -- gitsigns
  use "lewis6991/gitsigns.nvim"

  -- Latex
  use "lervag/vimtex"

  -- Latex equations
  use 'jbyuki/nabla.nvim'

  -- Markdown
  use({
    'MeanderingProgrammer/render-markdown.nvim',
    after = { 'nvim-treesitter' },
    requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
    -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
    -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
    config = function()
        require('render-markdown').setup({})
    end,
  })


  -- lua config code completion
  use "folke/neodev.nvim"
end)
