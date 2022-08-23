vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'gruvbox-community/gruvbox'
    use 'folke/tokyonight.nvim'
    use 'tpope/vim-fugitive'
    use 'tpope/vim-commentary'
    use 'kyazdani42/nvim-web-devicons'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'edkolev/tmuxline.vim'
    use 'airblade/vim-gitgutter'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
    }

    use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'hrsh7th/cmp-nvim-lsp-signature-help'

    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
end)
