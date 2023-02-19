vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = function()
		  local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
		  ts_update()
	  end,
  }

  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
      requires = {
          -- LSP Support
          {'neovim/nvim-lspconfig'},             -- Required
          {'williamboman/mason.nvim'},           -- Optional
          {'williamboman/mason-lspconfig.nvim'}, -- Optional
          {'onsails/lspkind-nvim'},

          -- Autocompletion
          {'hrsh7th/nvim-cmp'},         -- Required
          {'hrsh7th/cmp-nvim-lsp'},     -- Required
          {'hrsh7th/cmp-buffer'},       -- Optional
          {'hrsh7th/cmp-path'},         -- Optional
          {'saadparwaiz1/cmp_luasnip'}, -- Optional
          {'hrsh7th/cmp-nvim-lua'},     -- Optional

          -- Snippets
          {'L3MON4D3/LuaSnip'},             -- Required
          {'rafamadriz/friendly-snippets'}, -- Optional
      }
  }

  use {
      'quarto-dev/quarto-nvim',
      requires = {
          'jmbuhr/otter.nvim',
          'neovim/nvim-lspconfig'
      }
  }

  use {
    'w0rp/ale',
    ft = {'sh', 'fisk', 'cmake', 'html', 'css', 'javascript', 'markdown', 'lua', 'python'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  use {
    "zbirenbaum/copilot.lua",
  }

  -- use {
  --   "zbirenbaum/copilot-cmp",
  --   requires = {
  --       "onsails/lspkind-nvim",
  --   }
  --   after = { "copilot.lua" }
  -- }

  use { 'lewis6991/gitsigns.nvim' }
  use { "lukas-reineke/indent-blankline.nvim" }

  use { "catppuccin/nvim", as = "catppuccin" }

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
 
  use({
      "folke/noice.nvim",
      requires = {
          "MunifTanjim/nui.nvim",
          "rcarriga/nvim-notify",
      }
  })
  use { "folke/which-key.nvim" }
  use { "folke/zen-mode.nvim" }

  use { 'feline-nvim/feline.nvim' }

end)
