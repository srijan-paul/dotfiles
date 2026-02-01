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
    { 'projekt0n/github-nvim-theme' },
    {
        'rose-pine/neovim', as = 'rose-pine'
    },
    { 'Mofiqul/vscode.nvim' },
    {
        'maxmx03/solarized.nvim',
        lazy = false,
        priority = 1000,
        opts = {},
        config = function(_, opts)
            vim.o.termguicolors = true
            vim.o.background = 'light'
            require('solarized').setup(opts)
            vim.cmd.colorscheme 'solarized'
        end
    },
    {
        "zenbones-theme/zenbones.nvim",
        -- Optionally install Lush. Allows for more configuration or extending the colorscheme
        -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
        -- In Vim, compat mode is turned on as Lush only works in Neovim.
        dependencies = "rktjmp/lush.nvim",
        lazy = false,
        priority = 1000,
        -- you can set set configuration options here
        -- config = function()
        --     vim.g.zenbones_darken_comments = 45
        --     vim.cmd.colorscheme('zenbones')
        -- end
    },
    -- LSP
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'hrsh7th/nvim-cmp' },
    { 'williamboman/mason.nvim' },
    { 'williamboman/mason-lspconfig.nvim' },
}
