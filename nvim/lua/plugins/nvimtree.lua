return {
    'nvim-tree/nvim-tree.lua',
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require("nvim-tree").setup({
            sort = {
                sorter = "case_sensitive",
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
            },
            filters = {
                dotfiles = true,
            },
        })

        vim.keymap.set('n', '<C-t>', ':NvimTreeToggle<CR>', { desc = 'Toggle NvimTree' })
        -- close nvim tree when its the last window
        vim.api.nvim_create_autocmd("BufEnter", {
            nested = true,
            callback = function()
                if #vim.api.nvim_list_wins() == 1 and vim.bo.filetype == "NvimTree" then
                    vim.cmd("quit")
                end
            end,
        })
    end
}
