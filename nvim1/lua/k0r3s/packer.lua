-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({ 'rose-pine/neovim', as = 'rose-pine' })
	vim.cmd('colorscheme rose-pine')

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use ('wakatime/vim-wakatime')	use('mbbill/undotree')
	use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
    }
}
    use ("akinsho/toggleterm.nvim")
    use("mattn/emmet-vim")
    use("jiangmiao/auto-pairs")
    use("akinsho/bufferline.nvim")
    use ("lukas-reineke/indent-blankline.nvim")
    use ('mhartington/formatter.nvim')
    use("ray-x/web-tools.nvim")
    use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup({
            -- Add a space between comment and the line
            padding = true,
            -- Whether the cursor should stay at its position
            sticky = true,
            -- Lines to be ignored while (un)comment
            ignore = nil,
            -- LHS of toggle mappings in NORMAL mode
            toggler = {
                -- Line-comment toggle keymap
                line = 'gcc',
                -- Block-comment toggle keymap
                block = 'gbc',
            },
            -- LHS of operator-pending mappings in NORMAL and VISUAL mode
            opleader = {
                -- Line-comment keymap
                line = 'gc',
                -- Block-comment keymap
                block = 'gb',
            },
            -- LHS of extra mappings
            extra = {
                -- Add comment on the line above
                above = 'gcO',
                -- Add comment on the line below
                below = 'gco',
                -- Add comment at the end of line
                eol = 'gcA',
            },
            -- Enable keybindings
            -- NOTE: If given `false` then the plugin won't create any mappings
            mappings = {
                -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
                basic = true,
                -- Extra mapping; `gco`, `gcO`, `gcA`
                extra = true,
            },
            -- Function to call before (un)comment
            pre_hook = nil,
            -- Function to call after (un)comment
            post_hook = nil,
        })
    end
}

  end)
