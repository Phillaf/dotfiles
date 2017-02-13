" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'brookhong/cscope.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
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
nnoremap <F3> :set hlsearch!<CR>
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
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>u :TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>
