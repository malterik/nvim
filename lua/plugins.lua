local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

	-- LSP
	use 'neovim/nvim-lspconfig'
	use 'glepnir/lspsaga.nvim'
	use 'kosayoda/nvim-lightbulb'
	use 'onsails/lspkind-nvim'

	-- Autocomplete
	use 'hrsh7th/nvim-compe'

  -- General Plugins
  use 'bfredl/nvim-miniyank'

	-- Color
	use 'christianchiarulli/nvcode-color-schemes.vim'
	use 'norcalli/nvim-colorizer.lua'
	use 'sheerun/vim-polyglot'


end)
