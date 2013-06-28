execute pathogen#infect()
syntax on
filetype plugin indent on

" Small tabs
set tabstop=2
set shiftwidth=2
set expandtab

" Allow backspace over lines
set backspace=2

" Line numbers by default
set nu

set viminfo='100,<100,s10,h

" Remap C-n to toggle nerd tree
map <C-n> :NERDTreeToggle<CR>
