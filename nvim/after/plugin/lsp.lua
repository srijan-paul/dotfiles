local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.on_attach(function (client, bunfr)
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.diagnostic.config({ virtual_text = true })
end)


lsp.setup()

