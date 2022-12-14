return require('packer').startup {
  function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'kyazdani42/nvim-tree.lua'
    use 'kyazdani42/nvim-web-devicons'

    use 'christoomey/vim-tmux-navigator'

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    }

    use {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.0',
      requires = {
        { 'nvim-lua/plenary.nvim' },
        { 'nvim-telescope/telescope-live-grep-args.nvim' },
      },
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
    }

    use 'nvim-treesitter/playground'

    use {
      'williamboman/nvim-lsp-installer',
      'neovim/nvim-lspconfig',
    }

    use { 'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons' }

    use 'numToStr/Comment.nvim'
    use 'JoosepAlviste/nvim-ts-context-commentstring'

    use 'lewis6991/gitsigns.nvim'

    use {
      'akinsho/toggleterm.nvim',
      tag = '*',
      config = function()
        require('toggleterm').setup {
          open_mapping = [[<c-\>]],
          direction = 'float',
        }
      end,
    }

    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-nvim-lsp'

    use 'windwp/nvim-autopairs'

    use 'famiu/bufdelete.nvim'

    use 'tpope/vim-surround'

    use {
      'stevearc/dressing.nvim',
      config = function()
        require('dressing').setup {}
      end,
    }

    use {
      'ziontee113/icon-picker.nvim',
      config = function()
        require('icon-picker').setup {
          disable_legacy_commands = false,
        }
      end,
    }

    use { 'kevinhwang91/nvim-hlslens' }
    use { 'petertriho/nvim-scrollbar' }

    use {
      'folke/which-key.nvim',
      config = function()
        require('which-key').setup {
          -- your configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
        }
      end,
    }

    use {
      'booperlv/nvim-gomove',
      config = function()
        require('gomove').setup {
          map_defaults = false,
          reindent = true,
          undojoin = true,
          move_past_end_col = false,
        }
      end,
    }

    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    use {
      'tiagovla/scope.nvim',
      config = function()
        require('scope').setup()
      end,
    }

    use {
      'jose-elias-alvarez/null-ls.nvim',
      requires = 'nvim-lua/plenary.nvim',
    }

    use { 'lambdalisue/suda.vim' }

    use 'rebelot/kanagawa.nvim'
    use { 'catppuccin/nvim', as = 'catppuccin' }

    use {
      'gbprod/cutlass.nvim',
      config = function()
        require('cutlass').setup {
          cut_key = 'm',
          override_del = true,
          exclude = {},
        }
      end,
    }

    use {
      'Fymyte/rasi.vim',
      ft = { 'rasi' },
      run = ':TSInstall rasi',
      requires = { 'ap/vim-css-color', 'nvim-treesitter/nvim-treesitter' },
    }
  end,
  config = {
    display = {
      open_fn = require('packer.util').float,
    },
  },
}
