execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme Glowfish

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

" Map C-c to help with delimitMate
imap <C-c> <CR><Esc>O

" Map Ctrl-J to add a line below, Ctrl-K to add a line above
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Start searching early
set incsearch
