" Vundle config start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Plugin 'mattn/emmet-vim'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'qpkorr/vim-bufkill'
Plugin 'vim-airline/vim-airline'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'yegappan/grep'
" Bundle 'joonty/vdebug'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle config end
