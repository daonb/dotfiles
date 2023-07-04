require("daonb.remap")
require("daonb.plugins")
local null_ls = require("null-ls")

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 0 
vim.opt.softtabstop = -1 
vim.opt.scrolloff = 5
vim.opt.expandtab = true
vim.opt.laststatus = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.cursorline = false
vim.opt.hlsearch = true
vim.opt.incsearch = true

null_ls.setup({
    debug = true,
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})

