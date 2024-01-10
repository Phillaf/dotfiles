
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'chriskempson/base16-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'milkypostman/vim-togglelist'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" This plugin overrides my ftplugin configs
let g:editorconfig = v:false

" Initialize plugin system
call plug#end()

" Swapfile and undos
set noswapfile
set nobackup
set nowritebackup
set mouse=a

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
"set spell spelllang=en_ca

" Generic Hotkeys
let mapleader = "\<Space>"

noremap <Leader>ve :vsplit $MYVIMRC<CR>
noremap <Leader>vs :source $MYVIMRC<CR>
noremap ; :
nnoremap Q @q
nnoremap <Leader>n :set hlsearch!<CR>
noremap <C-c> :bp<bar>sp<bar>bn<bar>bd<CR>
noremap <C-p> :FZF<CR>
noremap <Leader>gg :grep -rn --exclude={tags,.php_cs.cache} --exclude-dir={vendor,.git,.phpcd} 
noremap <Leader>fa :grep -rn --exclude={tags,.php_cs.cache} --exclude-dir={vendor,.git,.phpcd} <cword> ./
noremap <Leader>fu :call CscopeFindInteractive(expand('<cword>'))<CR>
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
" Expand current path
noremap <Leader>p :put=expand('%:p')<CR>

" Use Airline as the tab manager
let g:airline#extensions#tabline#enabled = 1

" janko-m/vim-test
nmap <silent> <leader>tn :TestNearest<CR>
nmap <silent> <leader>tf :TestFile<CR>
nmap <silent> <leader>ts :TestSuite<CR>
nmap <silent> <leader>tl :TestLast<CR>
nmap <silent> <leader>tv :TestVisit<CR>

" Color scheme
set termguicolors
let g:airline_theme='base16_default'
colorscheme base16-default-dark
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

" Hack to get netrw to close the buffer when we pick a file
" ref: https://github.com/tpope/vim-vinegar/issues/13#issuecomment-315584214
let g:netrw_fastbrowse = 0

" ALE configs
 "let g:ale_php_php_executable = 'docker run --rm -it --volume $(pwd):$(pwd) -w $(pwd) phphil php'
"let g:ale_fix_on_save = 1
"let g:ale_lint_on_text_changed = 1
"let g:ale_set_highlights = 1

let g:ale_linters = {'php': ['intelephense', 'php']}
let g:EditorConfig_verbose=1
