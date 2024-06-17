require("daonb.remap")
require("daonb.plugins")
local null_ls = require("null-ls")

local options = {
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 0 ,
    softtabstop = -1 ,
    scrolloff = 5,
    expandtab = true,
    laststatus = 2,
    ignorecase = true,
    smartcase = true,
    relativenumber = true,
    number = true,
    cursorline = false,
    hlsearch = true,
    incsearch = true,
    termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
null_ls.setup({
    debug = true,
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
    },
})

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
vim.g.clipboard = {
    name = 'webexec',
    copy = {
        ["+"] = {'webexec', 'copy'},
        ["*"] = {'webexec', 'copy'},
    },
    paste = {
        ["+"] = {'webexec', 'paste'},
        ["*"] = {'webexec', 'paste'},
    },
    cache_enabled = true,
}
vim.cmd [[
hi diffText ctermfg=188 ctermbg=64 cterm=bold guifg=#FFFFFF guibg=#303030 gui=bold
hi diffAdded ctermfg=188 ctermbg=64 cterm=bold guifg=#50FA7B guibg=#303030 gui=bold
hi diffChange ctermfg=188 ctermbg=NONE cterm=bold guifg=#50FA7B guibg=#303030 gui=bold
hi diffRemoved ctermfg=88 ctermbg=NONE cterm=NONE guifg=#FA5057 guibg=#303030 gui=NONE
]]

