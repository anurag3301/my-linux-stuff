return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use({
      "jackMort/ChatGPT.nvim",
        config = function()
          require("chatgpt").setup()
        end,
        requires = {
          "MunifTanjim/nui.nvim",
          "nvim-lua/plenary.nvim",
          "nvim-telescope/telescope.nvim"
        }
    })

    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    }

    -- apperative plugins
    use 'hrsh7th/vim-vsnip'
    use 'mattn/emmet-vim'
    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
    config = function()
        require('dashboard').setup {
            theme = 'hyper',
        }
    end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }
    use 'marko-cerovac/material.nvim'
    use 'andweeb/presence.nvim'
    use 'RRethy/vim-illuminate'
  
    -- functional plugins
    use { 'rush-rs/tree-sitter-asm' }
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'
    use 'williamboman/nvim-lsp-installer'
    use 'mfussenegger/nvim-jdtls'
    use 'onsails/lspkind-nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'nvim-treesitter/nvim-treesitter-refactor'
    use 'akinsho/nvim-toggleterm.lua'
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use 'norcalli/nvim-colorizer.lua'
    use 'WhoIsSethDaniel/toggle-lsp-diagnostics.nvim'
    use 'kdheepak/lazygit.nvim'
    use 'terrortylor/nvim-comment'
    use 'rafamadriz/friendly-snippets'
    use 'Pocco81/auto-save.nvim'
    use {'turbio/bracey.vim', run = 'cd app & npm install --prefix server'}
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
    use 'sbdchd/neoformat'
    use {
        "ur4ltz/surround.nvim",
        config = function()
            require"surround".setup {mappings_style = "surround"}
        end
    }
  
    use {
        'lewis6991/gitsigns.nvim',
        requires = {
            'nvim-lua/plenary.nvim'
        }
    }
  
    use {
        'phaazon/hop.nvim',
        as = 'hop'
    }
  
    use {
        'akinsho/nvim-bufferline.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
  
    use {
        'p00f/cphelper.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'ygm2/rooter.nvim',
            opt = true
        }
    }
  
    use {
        'hoob3rt/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }
  
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            'nvim-lua/popup.nvim', 
            'nvim-lua/plenary.nvim' 
        }
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim', 
        run = 'make' 
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    use_rocks {'lunajson'}

end)
