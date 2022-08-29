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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require('packer').startup(function(use)

	-- My plugins here

    -- Packer
	use 'wbthomason/packer.nvim'

    -- For Other plugins
    use 'nvim-lua/plenary.nvim'

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

    -- Others snippets
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

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = [[require('setup.telescope')]]
    }


-- Other plugins
    use 'moll/vim-bbye'
    use 'lewis6991/impatient.nvim'
    use {
        'goolord/alpha-nvim',
        requires = { 'kyazdani42/nvim-web-devicons' },
        config = [[require('setup.alpha')]]
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = [[require('setup.blankline')]]
   }

    use 'folke/which-key.nvim'

    -- git
    use 'lewis6991/gitsigns.nvim'


    -- Comments
    use {
        'numToStr/Comment.nvim',
        config =[[require('setup.comments')]]
    }

    use 'JoosepAlviste/nvim-ts-context-commentstring'

end)


