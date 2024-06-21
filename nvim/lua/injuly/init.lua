require('injuly.packer')
require('injuly.catppuccin')
require('injuly.vesper')
require('injuly.rosepine')
require('injuly.neotree')
require('injuly.lualine')
require('injuly.cope-pilot')

local cmp_nvim_lsp = require("cmp_nvim_lsp")
local lspconfig = require("lspconfig")

lspconfig.clangd.setup {
	capabilities = cmp_nvim_lsp.default_capabilities(),
	cmd = {
		"clangd",
		"--offset-encoding=utf-16",
	},
}

