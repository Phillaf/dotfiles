" Color scheme
color default

" Show hidden chars
set list

" Show line at 120 chars
set colorcolumn=120

" Show line numbers
set nu
set relativenumber

" Indentation
set smartindent

" Disable error bell
set noeb vb t_vb=

" keep undo history while changing buffers
set hidden

" This makes webpack recognize file changes
set backupcopy=yes

" Use spaces instad of tabs
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Refresh tags everytime we save
function! UpdateTags()
    silent execute '!tmux new -d "bin/phpctags -C tags.cache -R ."'
endfunction
autocmd BufWritePost *.php call UpdateTags()
