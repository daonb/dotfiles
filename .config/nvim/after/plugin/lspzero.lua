local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

local lspconfig = require('lspconfig')
lspconfig["ts_ls"].setup({})
lspconfig.gopls.setup({})
lspconfig.pyright.setup({
    pythonPath= "/Users/daonb/Library/Caches/pypoetry/virtualenvs/vault-RT5-Ioyu-py3.10/bin/python"
})
