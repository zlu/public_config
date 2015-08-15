set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Put your non-Plugin stuff after this line

syntax on

runtime macros/matchit.vim

" autocmd vimenter * NERDTree

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
set backspace=indent,eol,start

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

execute pathogen#infect()
