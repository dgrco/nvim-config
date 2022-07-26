return require('packer').startup(function(use)
  -- manages packer
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/plenary.nvim'

  -- tooling
  use { "williamboman/mason.nvim" }
  use "williamboman/mason-lspconfig.nvim"
  
  -- lsp
  use 'neovim/nvim-lspconfig'

  -- completion
  vim.g.coq_settings = { auto_start = "shut-up" }
  use 'ms-jpq/coq_nvim'
  use 'ms-jpq/coq.artifacts'

  -- syntax highlighting
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- icons
  use 'kyazdani42/nvim-web-devicons'

  -- fuzzy finder
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}

  -- color themes
  use 'folke/tokyonight.nvim' 

  -- tabline
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- status line
  use 'nvim-lualine/lualine.nvim'

  -- tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- comments
  use 'terrortylor/nvim-comment'

  -- smooth scrolling
  use {
    'karb94/neoscroll.nvim', 
    config = function() 
      require("neoscroll").setup()
    end
  }

  -- formatting
  use 'jose-elias-alvarez/null-ls.nvim' 

  -- show keys
  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup{
        prefix = "<leader>"
      }
    end
  }

end)
