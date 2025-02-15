return {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
        previewers = {
            -- ignore large files
            builtin = { syntax_limit_b = 1024 * 100 },
        },
    }
}
