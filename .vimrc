" vimplug
call plug#begin('~/.vim/plugged')

" 'UI' features
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

" Syntax features
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'leafgarland/typescript-vim'
Plug 'hashivim/vim-terraform'
" Plug 'JamshedVesuna/vim-markdown-preview'

Plug 'editorconfig/editorconfig-vim'

" Language Specific Stuff
Plug 'vim-syntastic/syntastic'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jelera/vim-javascript-syntax'
Plug 'groenewege/vim-less'
Plug 'moll/vim-node'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'vim-scripts/paredit.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go'
Plug 'maksimr/vim-jsbeautify'
Plug 'mxw/vim-jsx'
Plug 'maxbane/vim-asm_ca65'

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'tpope/vim-projectionist', { 'for': 'clojure' }
Plug 'tpope/vim-dispatch', { 'for': 'clojure' }

" Completion/Snippets
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Prose
Plug 'DamienCassou/textlint'

call plug#end()

"execute pathogen#infect()
set t_Co=256
syntax on
filetype plugin indent on
colorscheme Darkside

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

nnoremap <silent><C-h> :tabprevious<CR>
nnoremap <silent><C-l> :tabnext<CR>

" Start searching early
set incsearch

" Expand lines w/ delimitMate
let delimitMate_expand_cr = 1

"remap leader to comma
let mapleader = ","

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_enable_signs=1
let g:syntastic_disabled_filetypes=['html']

map <Leader>j :lnext<CR>
map <Leader>k :lprev<CR>

" pastetoggl
set pastetoggle=<Leader>v

" ultisnips
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" YCM
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_confirm_extra_conf=0
set completeopt-=preview
let g:ycm_cache_omnifunc = 0

" Statusline
set laststatus=2

" Line length for markdown
au BufEnter *.markdown set tw=72|set fo=cqt|set wm=0
au BufEnter *.md set tw=72|set fo=cqt|set wm=0

" Sort lines
:vmap <F5> :sort<CR>

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Custom motion for selecting the entire file
vnoremap af :<C-U>silent! normal! ggVG<CR>
omap af :normal Vaf<CR>

" Persistent Undo!
" Make sure ~/.vim/undo exists
set undofile
set undodir=$HOME/.vim/undo

" vim markdown preview
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=2
let vim_markdown_preview_temp_file=1

" JSX
let g:jsx_ext_required = 0

" Ctrl-p
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|target|node_modules)$',
  \ 'file': '\v\.(exe|so|dll|jar)$'
  \ }

augroup filetypedetect
    au BufNewFile,BufRead *.asm set ft=asm_ca65
augroup END

