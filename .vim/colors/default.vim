" Not sure why, but gnome terminal doesn't show colors correctly without
" re-setting the background. 
set background&
hi Visual ctermfg=white ctermbg=darkgray
hi Search ctermfg=black ctermbg=yellow

" Set filetype colors
syntax on
filetype on

" Make vimdiff use cleaner colors
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17 gui=none guifg=bg guibg=Red1
highlight DiffText   cterm=bold ctermfg=10 ctermbg=88 gui=none guifg=bg guibg=Red1
