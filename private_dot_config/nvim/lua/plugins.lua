vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
    use 'gruvbox-community/gruvbox'
    use 'tpope/vim-fugitive'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use 'kyazdani42/nvim-web-devicons'

	use {'neoclide/coc.nvim', branch = 'release'}

end)

