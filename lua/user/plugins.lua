return require('packer').startup({ function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'

  use 'christoomey/vim-tmux-navigator'

  use 'navarasu/onedark.nvim'

  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('lualine').setup()
    end
  }

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = {
      { 'nvim-lua/plenary.nvim' },
      { 'nvim-telescope/telescope-live-grep-args.nvim' },
    },
    config = function()
      require('telescope').load_extension('live_grep_args')
    end
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }

  use 'nvim-treesitter/playground'

  use {
    'williamboman/nvim-lsp-installer',
    'neovim/nvim-lspconfig',
  }

  use {
    'prettier/vim-prettier',
    run = 'yarn install --frozen-lockfile',
    ft = { 'javascript', 'typescript', 'css', 'less', 'scss', 'graphql', 'markdown', 'vue', 'html' }
  }

  use { 'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' }

  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end
  }

  use 'lewis6991/gitsigns.nvim'

  use {
    'akinsho/toggleterm.nvim',
    tag = 'v2.*',
    config = function()
      require('toggleterm').setup()
    end
  }


  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'

  use "windwp/nvim-autopairs"

  use 'famiu/bufdelete.nvim'

  use 'tpope/vim-surround'

end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    }
  } })
