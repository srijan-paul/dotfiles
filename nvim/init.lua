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
	pattern = "markdown",
	command = "set conceallevel=2 | set spell"
})

-- No underline
vim.diagnostic.config({
	underline = false,
})

-- open a notes file on <leader>n (https://vimtricks.com/p/quickly-access-project-notes/)
map("n", "<Leader>n", ":tab drop tmp/notes.md<CR>")

-- Neotree keybinds
map("n", "<C-t>", ":Neotree toggle <CR>")
map("n", "<Leader>tt", ":Neotree focus <CR>")
map("n", "<Leader>fr", ":LspZeroFormat <CR>")
map("n", "<C-n>", ":tabnew <CR>")

-- FZF lua keybinds
local km = vim.keymap
local fzf = require("fzf-lua")
km.set("n", "<Leader>ff", fzf.files, { desc = "Fzf files" })
km.set("n", "<Leader>fg", fzf.live_grep_native, { desc = "Live grep" })
km.set("n", "<Leader>qf", fzf.quickfix, { desc = "Quick fixes" })
km.set("n", "<Leader>gs", fzf.lsp_document_symbols, { desc = "Symbols in document" })
km.set("n", "<Leader>ls", fzf.buffers, { desc = "Open buffers" })
km.set("n", "<Leader>gt", fzf.git_status, { desc = "Git status" })
km.set("n", "<Leader>m", fzf.marks, { desc = "Marks" })

-- Text-case keybinds
local textcase = require("textcase");
km.set("n", "<Leader>toc", function() textcase.current_word('to_camel_case') end)
km.set("n", "<Leader>tos", function() textcase.current_word('to_snake_case') end)
