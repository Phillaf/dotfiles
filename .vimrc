
" Vundle config start
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

call vundle#end()            " required
filetype plugin indent on    " required
" Vundle config end

" Not sure why, but gnome terminal doesn't show colors correctly without
" re-setting the background. 
set background&
hi Visual ctermfg=white ctermbg=darkgray
hi Search ctermfg=black ctermbg=yellow

" Set filetype colors
syntax on
filetype on
au BufNewFile,BufRead *.ino set filetype=cpp

" Use spaces instad of tabs
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

" AutoCompletion settings
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType ctp set omnifunc=phpcomplete#CompletePHP
autocmd CompleteDone * pclose

" Disable error bell
set noeb vb t_vb=

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_php_phpcs_args='--standard=CakePHP'
