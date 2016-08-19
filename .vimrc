" Vundle config start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'mattn/emmet-vim'
" Plugin 'vim-scripts/cscope_macros.vim'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-airline/vim-airline'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'yegappan/grep'
" Bundle 'joonty/vdebug'
" Bundle 'joonty/vim-phpqa.git'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle config end

au BufNewFile,BufRead *.ino set filetype=cpp

" Use spaces instad of tabs
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" buffkill - close current buffer with ctl + c
noremap <C-c> :BD<CR>

" airline
let g:airline#extensions#tabline#enabled = 1

" joonty/vim-phpwa -> php code coverage
" Clover code coverage XML file
"let g:phpqa_codecoverage_file = "/build/logs/clover.xml"

" Cscope gives an error when the file exists
set nocscopeverbose
