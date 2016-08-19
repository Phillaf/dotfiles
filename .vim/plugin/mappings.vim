" Custom hotkeys phil
let mapleader = "`"
noremap <Leader>h :bp<CR>
noremap <Leader>l :bn<CR>
noremap <Leader>j :lnext<CR>
noremap <Leader>k :lprevious<CR>
noremap <Leader>ve :vsplit $MYVIMRC<CR>
noremap <Leader>vs :source $MYVIMRC<CR>

" Use F3 to toggle highlight search
set hlsearch!
nnoremap <F3> :set hlsearch!<CR>

" Eatchar
if !exists('*Eatchar')
    func Eatchar(pat)
        let c = nr2char(getchar(0))
      return (c =~ a:pat) ? '' : c
    endfunc
endif

" Abbrev
autocmd FileType php iabbrev <buffer> if if () {<CR>}<ESC>k4li<C-R>=Eatchar('\s')<CR>
autocmd FileType php iabbrev <buffer> foreach foreach () {<CR>}<ESC>k5li<C-R>=Eatchar('\s')<CR>
