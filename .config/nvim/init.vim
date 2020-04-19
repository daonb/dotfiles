set nocompatible              " required by neovim
filetype plugin indent on
syntax on
" General settings
set colorcolumn=80  " Where to draw the line
set tabstop=4       " Default is 8
set shiftwidth=0    " Use the tabsto
set softtabstop=-1  " Use shiftwidth's valie
set expandtab
set laststatus=2
set statusline=%4l:%3c/%4L:\ %f
set statusline+=%#warningmsg#
set statusline+=%*
set encoding=utf-8
set clipboard=unnamed
set ignorecase smartcase
set relativenumber
set number
let mapleader = ","
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tmux_navigator_disable_when_zoomed = 1
set foldmethod=indent
set foldlevel=99
" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf.vim'
Plug 'fatih/vim-go'
call plug#end()
" Mappings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za
nmap ; :NERDTreeToggle<CR>
" ------------------
" END OF AFittestIDE
" ------------------ 
color elflord
