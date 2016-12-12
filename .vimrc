" Vundle config start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/ListToggle'
Plugin 'VundleVim/Vundle.vim'
Plugin 'adoy/vim-php-refactoring-toolbox'
Plugin 'airblade/vim-gitgutter'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'brookhong/cscope.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'joonty/vdebug'
Plugin 'joonty/vim-phpqa'
Plugin 'joonty/vim-phpunitqf'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'qpkorr/vim-bufkill'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-scripts/Greplace.vim'
Plugin 'yegappan/grep'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle config end
