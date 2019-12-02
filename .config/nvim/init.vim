set nocompatible              " required
filetype off                  " required
color elflord
set ignorecase smartcase
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'master' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-obsession'
Plug 'vim-syntastic/syntastic'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'
call plug#end()
filetype plugin indent on    " required
syntax on
set colorcolumn=120
set tabstop=4
set shiftwidth=0    " Use tabstop
set softtabstop=-1  " Use shiftwidthset shiftwidth=4
set expandtab
set laststatus=2
set statusline=%4l:%3c/%4L:\ %f
set statusline+=%#warningmsg#
set statusline+=%*
set encoding=utf-8
set clipboard=unnamed
set relativenumber
set number

let mapleader = ","
let python_highlight_all=1
"TODO: figure out what the next lines do and remove them or uncomment
"let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers = ['jshint']
let g:tmux_navigator_disable_when_zoomed = 1
set foldmethod=indent
set foldlevel=99

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
map <F3> :NERDTreeToggle<CR>
nmap ; :Denite file/rec buffer<CR>
" au BufNewFile,BufRead *.py 
au FileType py 
    \ set tabstop=4 |
    \ set textwidth=120 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix 
" au BufNewFile,BufRead *.js, *.html, *.css
au FileType js, html, css
    \ set tabstop=4 |
    \ set textwidth=120
