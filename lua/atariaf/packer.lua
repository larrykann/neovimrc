-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use({
        "ellisonleao/gruvbox.nvim", 
        as = 'gruvbox',
        config = function()
            vim.cmd('colorscheme gruvbox')
        end
    })

    use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use ('mbbill/undotree')

    use('tpope/vim-fugitive')

    -- LSP Support
    use('neovim/nvim-lspconfig')

    use('williamboman/mason.nvim')

    use('williamboman/mason-lspconfig.nvim')

    -- Autocompletion
    use('hrsh7th/nvim-cmp')

    use('hrsh7th/cmp-nvim-lsp')

    -- Snippets
    use('L3MON4D3/LuaSnip')

end)
