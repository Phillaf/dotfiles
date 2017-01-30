" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.config/nvim/plugged')

Plug 'Valloric/ListToggle'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'php-vim/phpcd.vim', { 'for': 'php' , 'do': 'composer update' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/Greplace.vim'

" Initialize plugin system
call plug#end()
