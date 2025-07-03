vim.g.mapleader = " " -- leader key is space

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<C-n>", ":tabnew<CR>")

local km = vim.keymap

-- FzfLua keybinds
local fzf = require("fzf-lua")
fzf.setup({
    files = {
        provider = "rg",
        fd_opts = "--type f --color=always --hidden --follow --exclude .git"
    }
})
km.set("n", "<Leader>ff", fzf.files, { desc = "Fzf files" })
km.set("n", "<Leader>fg", fzf.live_grep_native, { desc = "Live grep" })
km.set("n", "<Leader>qf", fzf.quickfix, { desc = "Quick fixes" })
km.set("n", "<Leader>gs", fzf.lsp_document_symbols, { desc = "Symbols in document" })
km.set("n", "<Leader>ls", fzf.buffers, { desc = "Open buffers" })
km.set("n", "<Leader>gt", fzf.git_status, { desc = "Git status" })
km.set("n", "<Leader>m", fzf.marks, { desc = "Marks" })

-- Text case keybinds
local textcase = require("textcase");
km.set("n", "<Leader>toc", function() textcase.current_word('to_camel_case') end)
km.set("n", "<Leader>tos", function() textcase.current_word('to_snake_case') end)

-- Copilot accept override
vim.g['copilot_no_tab_map'] = true
map('i', '<C-j>', 'copilot#Accept("<CR>")', { expr = true, silent = true })

