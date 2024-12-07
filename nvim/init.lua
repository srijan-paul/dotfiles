require('injuly.init')

-- Just to stop the LSP from complaining
_G.vim = _G.vim

-- source the old vimrc.
-- I haven't yet moved from vimscript to Lua completely.
vim.cmd 'source ~/.config/nvim/old-conf.vim'
vim.cmd.colorscheme 'rose-pine'

vim.o.tabstop = 2       -- 1 tab = 2 space
vim.o.expandtab = false -- dont convert tab 2 space
vim.o.softtabstop = 2   -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 2    -- Number of spaces inserted when indenting


-- Functional wrapper for mapping custom keybindings
local function map(mode, lhs, rhs, opts)
	local options = { noremap = true }
	if opts then
		options = vim.tbl_extend("force", options, opts)
	end
	vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- use spaces for haskell.
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "haskell", "*cabal" },
	command = "set expandtab"
})

vim.api.nvim_create_autocmd("FileType", {
	pattern =  "markdown",
	command = "set conceallevel=2 | set spell"
})

-- No underline

vim.diagnostic.config({
	underline = false,
})

-- open a notes file on <leader>n (https://vimtricks.com/p/quickly-access-project-notes/)
map("n", "<Leader>n", ":tab drop tmp/notes.md<CR>")
map("n", "<C-t>", ":Neotree toggle <CR>")
map("n", "<Leader>t", ":Neotree toggle <CR>")
map("n", "<Leader>tt", ":Neotree focus <CR>")
map("n", "<Leader>fr", ":LspZeroFormat <CR>")
