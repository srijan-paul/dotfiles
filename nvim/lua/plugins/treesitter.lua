return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = {
				'typescript', 'lua', 'javascript',
				'c', 'zig', 'json', 'html', 'python'
			},
			highlight = { enable = true },
			indent = { enable = true },
		}
	end
}
