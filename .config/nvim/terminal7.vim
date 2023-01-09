" Vim color scheme

" Colors
let s:bg = '#000000' " Black background
let s:fg = '#F4DB53' " Yellow foreground
let s:c1 = '#F952F9' " Pink
let s:c2 = '#00FAFA' " Turquoise
let s:c3 = '#271D30' " Dark purple
let s:diff_add = '#00FF00' " Green
let s:diff_delete = '#FF0000' " Red
let s:diff_change = '#FFFF00' " Yellow
let s:identifier = '#4B0082' " Indigo
let s:statusline_bg = '#222222' " Dark gray

" Normal colors
hi clear
hi Normal guibg=s:bg guifg=s:fg

" Syntax highlighting
hi Comment guifg=s:c1
hi Constant guifg=s:c2
hi Identifier guifg=s:identifier guibg=s:bg
hi Statement guifg=s:fg
hi PreProc guifg=s:c2
hi Type guifg=s:c3
hi Special guifg=s:fg

" Statusline
hi StatusLine guibg=s:statusline_bg guifg=s:fg
hi StatusLineNC guibg=s:statusline_bg guifg=s:c1

" Visual mode
hi Visual guibg=s:c1 guifg=s:fg

" Search results
hi Search guibg=s:c2 guifg=s:fg
hi IncSearch guibg=s:c3 guifg=s:fg

" Diff mode
hi DiffAdd guibg=s:diff_add guifg=s:fg
hi DiffDelete guibg=s:diff_delete guifg=s:fg
hi DiffChange guibg=s:diff_change guifg=s:fg
