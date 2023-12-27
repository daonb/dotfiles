local lsp = require('lsp-zero').preset({})
local lspconfig = require('lspconfig')
lspconfig.tsserver.setup {}

-- lsp.on_attach(function(client, bufnr)
  -- lsp.default_keymaps({buffer = bufnr})
-- end)

lspconfig["gopls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lspconfig["pylyzer"].setup({})
