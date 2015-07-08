set nocompatible

syntax on

filetype on
filetype indent on
filetype plugin on

set t_Co=256
set number
set nu
set shiftwidth=2
set tabstop=2
set ai
set ci
set hls
set ruler
set wildmenu
set smarttab
set incsearch

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

execute pathogen#infect()
