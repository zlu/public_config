set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'elixir-lang/vim-elixir'
Plugin 'wincent/command-t'
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Put your non-Plugin stuff after this line

syntax on

runtime macros/matchit.vim

set t_Co=256
set number
set nu
set shiftwidth=2
set ai
set ci
set hls
set ruler
set wildmenu
set smarttab
set incsearch
set backspace=indent,eol,start
set tabstop=2
set showcmd
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

" :e %%/filename to expand path to the current file
cabbr <expr> %% expand('%:p:h')

noremap <Leader>re :!ruby %
noremap <Leader>pe :!python %

map <C-n> :NERDTreeToggle<CR>

au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

autocmd FileType sh,ruby,python   let b:comment_leader = '# '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
   exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" Programming Languages
call NERDTreeHighlightFile('ex', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('rb', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('py', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('php', 'magenta', 'none', '#ff00ff', '#151515')
call NERDTreeHighlightFile('js', 'red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('go', 'red', 'none', '#ffa500', '#151515')
  
" Authoring
call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')

" Configuration Files
call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')

" Web
call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')

execute pathogen#infect()

