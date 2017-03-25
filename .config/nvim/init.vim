" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'brookhong/cscope.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'joonty/vdebug'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mhartington/oceanic-next'
Plug 'neomake/neomake'
Plug 'php-vim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'valloric/listtoggle'
Plug 'vim-airline/vim-airline'


" Initialize plugin system
call plug#end()

" Swapfile and undos
set noswapfile
set nobackup
set nowritebackup

" Persistent undos
if !&diff
  set undodir=~/.vim/undodir
  set undofile
endif

" The good old whitespaces
set list listchars=tab:▸\ ,eol:\ ,trail:·
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Preferences
set number
set relativenumber
set ruler
set showmode
set noerrorbells
set hlsearch
set hidden
:filetype on

" Hotkeys
let mapleader = "\<Space>"

noremap <Leader>ve :vsplit $MYVIMRC<CR>
noremap <Leader>vs :source $MYVIMRC<CR>
noremap ; :
nnoremap Q @q
nnoremap <Leader>n :set hlsearch!<CR>
noremap <C-c> :bd<CR>
noremap <C-p> :FZF<CR>

" Window navigation
:tnoremap <A-h> <C-\><C-n><C-w>h
:tnoremap <A-j> <C-\><C-n><C-w>j
:tnoremap <A-k> <C-\><C-n><C-w>k
:tnoremap <A-l> <C-\><C-n><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

" Exit terminal
:tnoremap <Esc> <C-\><C-n>

" Plugins config

" Use Airline as the tab manager
let g:airline#extensions#tabline#enabled = 1

" Run neomake on all saves
autocmd! BufWritePost * Neomake

" Cscope util
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>

" janko-m/vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" Phpcs options in neomake
function! neomake#makers#ft#php#phpcs() abort
    return {
        \ 'args': 
            \ '--report=csv ',
        \ 'errorformat':
            \ '%-GFile\,Line\,Column\,Type\,Message\,Source\,Severity%.%#,'.
            \ '"%f"\,%l\,%c\,%t%*[a-zA-Z]\,"%m"\,%*[a-zA-Z0-9_.-]\,%*[0-9]%.%#',
        \ }
endfunction

" Color scheme
colorscheme OceanicNext
highlight Normal ctermbg=none
highlight NonText ctermbg=none
let g:airline_theme='oceanicnext'

" Php namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort = "'{,'}-1sort i"
    let g:vdebug_options= {
    \    "port" : 9000,
    \    "server" : '',
    \    "timeout" : 20,
    \    "on_close" : 'detach',
    \    "break_on_open" : 0,
    \    "ide_key" : '',
    \    "path_maps" : {},
    \    "debug_window_level" : 0,
    \    "debug_file_level" : 0,
    \    "debug_file" : "",
    \    "watch_window_style" : 'expanded',
    \    "marker_default" : '⬦',
    \    "marker_closed_tree" : '▸',
    \    "marker_open_tree" : '▾'
    \}
