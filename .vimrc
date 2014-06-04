execute pathogen#infect()
set t_Co=256
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

" Map Ctrl-J to add a line below, Ctrl-K to add a line above
nnoremap <silent><C-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Start searching early
set incsearch

"snipmate
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger

" Expand lines w/ delimitMate
let delimitMate_expand_cr = 1

"remap leader to comma
let mapleader = ","

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
"let g:syntastic_check_on_open=1
let g:syntastic_javascript_checkers=["jshint"]

map <Leader>j :lnext<CR>
map <Leader>k :lprev<CR>
