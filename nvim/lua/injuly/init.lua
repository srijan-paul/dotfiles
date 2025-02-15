local opt = vim.opt;

opt.guicursor = ""
opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.smartcase = true
opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.termguicolors = true
opt.signcolumn = "yes"

-- Spellcheck and conceal links etc for markdown files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown",
	command = "set conceallevel=2 | set spell"
})

-- Set expandtab for haskell files
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "haskell", "*cabal" },
	command = "set expandtab"
})

