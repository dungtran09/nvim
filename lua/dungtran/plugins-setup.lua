--require("gruvbox-material");
-- Auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- True if packer was just installed

-- Autocommand that reloads neovim and installs/updates/removes plugins
-- When file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end
-- add list of plugins to install
return packer.startup(function(use)
	-- Package Manager
	use("wbthomason/packer.nvim")

	-- Color themes
	use("sainnhe/gruvbox-material")
	-- The fastest Neovim colorizer
	use("norcalli/nvim-colorizer.lua")

	-- Surround.vim: quoting/parenthesizing made simple
	use("tpope/vim-surround")

	-- Tmux & split window navigation
	use("christoomey/vim-tmux-navigator")

	-- maximizes and restores current window
	use("szw/vim-maximizer")

	use("vim-scripts/ReplaceWithRegister")

	-- Comment
	use("numToStr/Comment.nvim")

	-- Nvim Treesitter configurations and abstraction layer
	use("nvim-treesitter/nvim-treesitter")

	-- A file explorer tree for neovim written in lua
	use("nvim-tree/nvim-tree.lua")

	-- Icons
	use("kyazdani42/nvim-web-devicons")

	-- A snazzy bufferline for Neovim
	use("romgrk/barbar.nvim")
	-- use({ "akinsho/bufferline.nvim", tag = "v3.*" })

	-- Statusline plugin written in pure lua & icons
	use("nvim-lualine/lualine.nvim")

	-- Super fast git decorations implemented purely in lua/teal.
	use("lewis6991/gitsigns.nvim")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths

	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- Wild menu
	use("gelguy/wilder.nvim")

	-- Mkdir folder
	use("jghauser/mkdir.nvim")

	-- Dashboard (start screen)
	use("goolord/alpha-nvim")

	-- Auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use("alvan/vim-closetag")

	-- Lua functions that many plugins use
	use("nvim-lua/plenary.nvim")

	-- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/popup.nvim")

	-- Smooth scrolling neovim plugin written in lua
	use("karb94/neoscroll.nvim")

	--Indent guides for Neovim
	use("lukas-reineke/indent-blankline.nvim")

	-- Web-tools
	use("ray-x/web-tools.nvim")

	-- Terminal in Neovim
	use({ "akinsho/toggleterm.nvim", tag = "*" })

	-- For Java
	use("mfussenegger/nvim-jdtls")

	if packer_bootstrap then
		require("packer").sync()
	end
end)
