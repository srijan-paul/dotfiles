-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
		end
	})

	use {
		"ibhagwan/fzf-lua",
		requires = { "nvim-tree/nvim-web-devicons" }
	}

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },          -- Required
			{ 'williamboman/mason.nvim' },        -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },      -- Required
			{ 'hrsh7th/cmp-nvim-lsp' },  -- Required
			{ 'hrsh7th/cmp-buffer' },    -- Optional
			{ 'hrsh7th/cmp-path' },      -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' },  -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },          -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional

		}
	}

	-- color themes
	use { "catppuccin/nvim", as = "catppuccin" }
	use 'cseelus/vim-colors-lucid'
	use "rebelot/kanagawa.nvim"

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",

			{
				-- only needed if you want to use the commands with "_with_window_picker" suffix
				's1n7ax/nvim-window-picker',
				tag = "v1.*",
			}
		}
	}

	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	}

	use { 'github/copilot.vim' }
	use 'datsfilipe/vesper.nvim'
	use 'purescript-contrib/purescript-vim'
	use 'lervag/vimtex'
end)
