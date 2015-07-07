set nocompatible

syntax on

filetype on
filetype indent on
filetype plugin on

set t_Co=256
set nu
set shiftwidth=2
set tabstop=2
set ai
set ci

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
