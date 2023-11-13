-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', -- , tag = '0.1.2',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use({ 'rose-pine/neovim', as = 'rose-pine',
  config = function()
	  vim.cmd('colorscheme rose-pine')
  end
  })

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use('APZelos/blamer.nvim')
  use('sbdchd/neoformat')


  use({
    "stevearc/oil.nvim",
    config = function()
      require("oil").setup({
          -- these are default keymaps
          keymaps = {
              ["g?"] = "actions.show_help",
              ["<CR>"] = "actions.select",
              ["<C-s>"] = "actions.select_vsplit",
              ["<C-h>"] = "actions.select_split",
              ["<C-t>"] = "actions.select_tab",
              ["<C-p>"] = "actions.preview",
              ["<C-c>"] = "actions.close",
              ["<C-l>"] = "actions.refresh",
              ["-"] = "actions.parent",
              ["_"] = "actions.open_cwd",
              ["`"] = "actions.cd",
              ["~"] = "actions.tcd",
              ["gs"] = "actions.change_sort",
              ["gx"] = "actions.open_external",
              ["g."] = "actions.toggle_hidden",
              ["g\\"] = "actions.toggle_trash",
          },
          -- Set to false to disable all of the above keymaps
          use_default_keymaps = false,
      })
    end,
  })


end)
