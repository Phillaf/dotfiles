
" Vundle config
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Can't remember what this was for
:set background&

" Set filetype colors
syntax on
filetype on
au BufNewFile,BufRead *.ino set filetype=cpp

" Use spaces instad of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Show hidden chars
:set list

" Show line numbers
:set nu

" Make vimdiff use cleaner colors
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red1

" Use F3 to toggle highlight search
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" Indentation
set smartindent
