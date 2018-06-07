" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

Plug 'arnaud-lb/vim-php-namespace'
Plug 'brookhong/cscope.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'milkypostman/vim-togglelist'
Plug 'neomake/neomake'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'chriskempson/base16-vim'

" Broken: caused a large error log when I saved files
"Plug 'php-vim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }

" Issue with vim-php-namespace
"Plug 'airblade/vim-gitgutter'

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
set termguicolors
let g:airline_theme='base16_default'
colorscheme base16-default-dark
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE

" Php namespace
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
autocmd FileType php noremap <Leader>s :call PhpSortUse()<CR>

let g:php_namespace_sort = "'{,'}-1sort i"

" Gutentags
let g:gutentags_ctags_executable_php = 'ctags -R --language=php --php-kinds=cfit'

" Cscope
let g:cscope_ignored_dir = 'vendor'

" Clover code coverage XML file
let g:phpqa_codecoverage_file = "clover.xml"
let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codecoverage_autorun = 1
let g:phpqa_open_loc = 0


" Hack to get netrw to close the buffer when we pick a file
" ref: https://github.com/tpope/vim-vinegar/issues/13#issuecomment-315584214
set nohidden
augroup netrw_buf_hidden_fix
    autocmd!

    " Set all non-netrw buffers to bufhidden=hide
    autocmd BufWinEnter *
                \  if &ft != 'netrw'
                \|     set bufhidden=hide
                \| endif

augroup end
