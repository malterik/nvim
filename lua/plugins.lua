local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Explorer
	use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'nvim-tree'.setup {} end
	}

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'kosayoda/nvim-lightbulb'
	use 'onsails/lspkind-nvim'

	-- Autocomplete
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'
	use 'hrsh7th/vim-vsnip-integ'
	use 'xabikos/vscode-javascript'
	use 'dsznajder/vscode-es7-javascript-react-snippets'
	use 'golang/vscode-go'
	use 'rust-lang/vscode-rust'
	use 'ChristianChiarulli/html-snippets'
	use 'ChristianChiarulli/java-snippets'
	use 'ChristianChiarulli/python-snippets'
	use 'polypus74/trusty_rusty_snippets'

	-- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
	use 'nvim-treesitter/nvim-treesitter-refactor'
	use 'p00f/nvim-ts-rainbow'

	-- Status Line and Bufferline
	use 'glepnir/galaxyline.nvim'
	-- use {'akinsho/nvim-bufferline.lua', requires = 'kyazdani42/nvim-web-devicons'}
	use 'romgrk/barbar.nvim'

  -- General Plugins
  use 'bfredl/nvim-miniyank'
	use 'terrortylor/nvim-comment'
	use 'glepnir/dashboard-nvim'

	-- Icons
	use 'kyazdani42/nvim-web-devicons'
	use 'ryanoasis/vim-devicons'

	-- Color
	use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'norcalli/nvim-colorizer.lua'
	use 'sheerun/vim-polyglot'

	-- Git
	use 'timuntersberger/neogit'
	use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
	use 'f-person/git-blame.nvim'
	use 'tpope/vim-fugitive'
	use 'tpope/vim-rhubarb'

	 -- Telescope
	use 'nvim-lua/popup.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-telescope/telescope.nvim'
	use 'nvim-telescope/telescope-media-files.nvim'

	-- use 'lukas-reineke/indent-blankline.nvim'
end)
