" Vundle config start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Bundle 'arnaud-lb/vim-php-namespace'
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'qpkorr/vim-bufkill'
Plugin 'scrooloose/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'yegappan/grep'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle config end
