syntax on
set expandtab
set nu
set nocompatible
set backspace=indent,eol,start
set showmode ruler
set nomodeline
set autoindent
set ts=4
set sw=4
set softtabstop=4
set statusline=%<%f\ (%{&encoding})\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set wildmenu
set fileformat=unix
set nobackup
set wmh=0

filetype indent on
filetype plugin on

map <C-J> <C-W>j . <C-W>_
map <C-K> <C-W>k . <C-W>_

colorscheme wombat
autocmd BufEnter * cd %:p:h
autocmd BufWritePre *.py :%s/\s\+$//e

au BufRead,BufNewFile *.mako set filetype=mako
