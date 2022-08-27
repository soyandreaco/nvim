-----------------------------------------------------------
--                                                       --
--                   .    ..			   				 --
--                   |\__/,|   (`\						 --
--                 _.|o o  |_.  ) )						 --
--             ---(((---(((---------					 --
--             ★♬彡 SoyAndreaCO 彡♬★					 --
--														 --
-----------------------------------------------------------

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	-- My plugins here

    -- Packer
	use 'wbthomason/packer.nvim'

    --Scheme
    use {
        'bluz71/vim-nightfly-guicolors',
        config = [[require('setup.nightfly')]]
    }

    -- Icons
    use 'kyazdani42/nvim-web-devicons'

	-- Lualine
    use {
        'nvim-lualine/lualine.nvim',
        config = [[require('setup.lualine')]],
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Bufferline
    use {
        'akinsho/bufferline.nvim',
        config = [[require('setup.bufferline')]],
        tag = 'v2.*',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- Emmet
	use 'mattn/emmet-vim'

    -- colorizer
	use{
		'norcalli/nvim-colorizer.lua',
        config = [[require('setup.colorizer')]],
		event = 'BufReadPre',
		cmd = 'ColorizerToggle'
	}

   	-- Highlights Treesitter
	use{
		'nvim-treesitter/nvim-treesitter',
		config = [[require('setup.treesitter')]],
		run = ':TSUpdate',
		requires = {
		  'nvim-treesitter/playground',
		  'nvim-treesitter/nvim-treesitter-refactor',
		  'nvim-treesitter/nvim-treesitter-textobjects',
		}
	}

	-- Surround
	use 'tpope/vim-surround'

    -- Other tools
	use 'tpope/vim-repeat'

    use {
        'windwp/nvim-autopairs',
        config = [[require('setup.autopairs')]]
	}


    -- LSP % Mason
    use {
        'williamboman/mason.nvim',
        config = [[require('setup.mason')]]
    }

    use {
        'williamboman/mason-lspconfig.nvim',
        config = [[require('setup.masonlsp')]]
    }

    use 'neovim/nvim-lspconfig'

    use 'folke/lsp-colors.nvim'


    -- Completition
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'

    use {
        'hrsh7th/nvim-cmp',
        config = [[require('setup.nvimcmp')]]
    }

    -- For vsnip users
	use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- For luasnip users
	use 'L3MON4D3/LuaSnip'
	use 'saadparwaiz1/cmp_luasnip'

    -- Lua Snips
    use 'hrsh7th/cmp-nvim-lua'

    -- Others 
    use 'hrsh7th/cmp-git'
    use 'hrsh7th/vim-vsnip-integ'
	use 'rafamadriz/friendly-snippets'

    -- Neo-tree
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim",
            "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        }
    }

end)


