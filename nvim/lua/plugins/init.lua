return {
    {
        "johmsalas/text-case.nvim",
        config = function() require('textcase').setup {} end
    },

    { "github/copilot.vim" },

    {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    },

    --- Colorschemes
    {
        'rose-pine/neovim', as = 'rose-pine'
    },

    -- LSP
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
}
