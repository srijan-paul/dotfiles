local theme = require('catppuccin')

local theme_config = {
  transparent_background = true,
  integrations = {
    native_lsp = {
      enabled = true,
      virtual_text = {
        errors = { "italic" },
        hints = { "italic" },
        warnings = { "italic" },
        information = { "italic" }
      },
      underlines = {
        errors = { "underline" },
        hints = { "underline" },
        warnings = {  },
        information = { "underline" },
      },
    },
  },
  color_overrides = {},
}

theme.setup(theme_config)

vim.cmd.colorscheme "catppuccin"

