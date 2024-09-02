local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

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

  -- gitlab
  use {
    "harrisoncramer/gitlab.nvim",
    requires = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "stevearc/dressing.nvim", -- Recommended but not required. Better UI for pickers.
      "nvim-tree/nvim-web-devicons", -- Recommended but not required. Icons in discussion tree.
      'navarasu/onedark.nvim'
    },
    build = function()
      require("gitlab.server").build()
    end,
    branch = "develop",
    config = function()
      require("diffview") -- We require some global state from diffview
      local gitlab = require("gitlab")
      gitlab.setup()
    end,
  }

  -- Latex
  use "lervag/vimtex"
end)
