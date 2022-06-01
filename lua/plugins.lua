------------------------------------------------------
--
--                   .    ..			   				 --
--                   |\__/,|   (`\						 --
--                 _.|o o  |_.  ) )						 --
--             ---(((---(((---------					 --
--             ★♬彡 SoyAndreaCO 彡♬★					 --
--														 --
-----------------------------------------------------------
local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
	'git',
	 'clone',
	 '--depth',
	 '1',
	 'https://github.com/wbthomason/packer.nvim',
	 install_path,
  })
  print ("Installing packer close and reopen Neovim...")
  vim.cmd [[packadd packer.nvim]]
end


vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  print ( "Error asalazar")
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup({

  function(use)

	-- My plugins here

	use("wbthomason/packer.nvim")


	-- Fzf
	use({
		"junegunn/fzf",
		run = ":call fzf#install()"
	})
	use("junegunn/fzf.vim")


	-- Icons
	use("kyazdani42/nvim-web-devicons")


	-- Lualine
	use({
		"nvim-lualine/lualine.nvim",
		config = get_setup("lualine"),
		requires = {"kyazdani42/nvim-web-devicons", opt = true}
	})


	-- Surround
	use("tpope/vim-surround")
	use("tpope/vim-repeat")


	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ':TSUpdate',
		config = get_setup("treesitter"),
		requires = {
		  "nvim-treesitter/playground",
		  "nvim-treesitter/nvim-treesitter-refactor",
		  "nvim-treesitter/nvim-treesitter-textobjects",
		}
	})


	-- Telescope
	use({
		"nvim-telescope/telescope.nvim",
		config = get_setup("telescope"),
		requires = {
		  "nvim-lua/plenary.nvim",
		  "nvim-lua/popup.nvim"
		}
	})


	-- Emmet
	use("mattn/emmet-vim")


	-- Lsp
	use({
		"williamboman/nvim-lsp-installer",
		config = get_setup("lspinstaller")
	})

	use({
		"neovim/nvim-lspconfig",
		config = get_setup("lspconfig")
	})


	-- Completion
	use({
		"hrsh7th/nvim-cmp",
		config = get_setup("nvimcmp")
	})

	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
  	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-cmdline")


	-- Lua snips
	use("hrsh7th/vim-vsnip")
	use("hrsh7th/cmp-vsnip")
	use("hrsh7th/vim-vsnip-integ")
	use("rafamadriz/friendly-snippets")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")


	-- Lua
	use("folke/which-key.nvim")


	-- Git
	use("lewis6991/gitsigns.nvim")
	use("mbbill/undotree")


	-- Scheme
	use({
		"EdenEast/nightfox.nvim",
		config = get_setup("nightfox")
	})


	-- Autopairs
	use({
		"windwp/nvim-autopairs",
		config = get_setup("autopairs")
	})


	-- Hop
	use({
		"phaazon/hop.nvim",
		branch = 'v1', -- optional but strongly recommended
		config = get_setup("hop")
	})


	-- Trouble
	use({
		"folke/trouble.nvim",
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	})


	-- Prettier
	use({
		"prettier/vim-prettier",
		run = 'npm install'
	})


	-- colorizer
	use({
		"norcalli/nvim-colorizer.lua",
		event = "BufReadPre",
		cmd = "ColorizerToggle",
		config = get_setup("colorizer")
	})


	-- fern
	use("lambdalisue/fern.vim")
	use("lambdalisue/nerdfont.vim")
	use("lambdalisue/fern-renderer-nerdfont.vim")


	--Bufferline
	use({
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = {'kyazdani42/nvim-web-devicons', opt = true},
		config = get_setup("bufferline")
	})


	-- Comments
	use{"terrortylor/nvim-comment"}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end})
