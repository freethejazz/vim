b" vimplug
call plug#begin('~/.vim/plugged')

" 'UI' features
Plug 'scrooloose/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'

" Syntax features
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'Raimondi/delimitMate'
Plug 'kien/rainbow_parentheses.vim'
Plug 'leafgarland/typescript-vim'
Plug 'hashivim/vim-terraform'
Plug 'tomlion/vim-solidity'
Plug 'neo4j-contrib/cypher-vim-syntax'
Plug 'chrisbra/csv.vim'
" Plug 'flowtype/vim-flow'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'digitaltoad/vim-pug'

Plug 'editorconfig/editorconfig-vim'

" Language Specific Stuff
" Plug 'vim-syntastic/syntastic'
Plug 'w0rp/ale'
" Plug 'pangloss/vim-javascript'
Plug 'yuezk/vim-js'
" Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'
" Plug 'jelera/vim-javascript-syntax'
Plug 'groenewege/vim-less'
Plug 'moll/vim-node'
Plug 'puppetlabs/puppet-syntax-vim'
Plug 'vim-scripts/paredit.vim'
Plug 'elzr/vim-json'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'maksimr/vim-jsbeautify'
Plug 'maxbane/vim-asm_ca65'
Plug 'nvie/vim-flake8'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-salve', { 'for': 'clojure' }
Plug 'tpope/vim-dispatch', { 'for': 'clojure' }

Plug 'psf/black', { 'branch': 'stable' }

" Completion/Snippets
" Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'zxqfl/tabnine-vim'

" Prose
Plug 'DamienCassou/textlint'

Plug 'OmniSharp/omnisharp-vim'

call plug#end()

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

" Map  alt-J and leader-K to move current line up or down
" See SO post here: https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


nnoremap <silent><C-h> :tabprevious<CR>
nnoremap <silent><C-l> :tabnext<CR>

" Start searching early
set incsearch

" Expand lines w/ delimitMate
let delimitMate_expand_cr = 1

"remap leader to comma
let mapleader = ","

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:ale_sign_error = '>' " Less aggressive than the default '>>'
let g:ale_sign_warning = '-'
let g:ale_fixers = {'javascript': ['prettier'], 'typescript': ['prettier'], 'typescriptreact': ['prettier']}
let g:ale_fix_on_save = 1
" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_enable_signs=1
" let g:syntastic_disabled_filetypes=['html']

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
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Google Chrome'
let vim_markdown_preview_toggle=1
let vim_markdown_preview_temp_file=1

" JSX
let g:jsx_ext_required = 0

" Ctrl-p
let g:ctrlp_custom_ignore = {
  \ "dir":  "\v[\/](\.(git|hg|svn)|target|node_modules)$",
  \ "file": "\v\.(exe|so|dll|jar)$"
  \ }

" Projectionist

let g:projectionist_heuristics = {
  \  "package.json&node_modules/react/": {
  \    "README.md": { "type": "doc" },
  \    "src/app/components/*.js": { "type": "component", "template": ["import React, {open} Component {close} from 'react';\n\nexport default () => {open}\n  return <div></div>;\n{close}}"] },
  \    "src/app/containers/*.js": { "type": "containers" },
  \    "src/app/reducers/*.js": { "type": "reducer" },
  \    "src/app/reducers/index.js": { "type": "reducer" }
  \  }
  \}

augroup filetypedetect
    au BufNewFile,BufRead *.asm set ft=asm_ca65
augroup END

augroup filetypedetect
    au BufNewFile,BufRead *.ashx set ft=cs
augroup END

" Interpret some config files as json
augroup filetypedetect
    au BufNewFile,BufRead .eslintrc,.babelrc set ft=json
augroup END

" Auto-highlight CSV columns
let g:csv_highlight_column = 'y'

" for parcel
set backupcopy=yes

" Allow toggling of autocentering lines of code
" https://vim.fandom.com/wiki/Keep_your_cursor_centered_vertically_on_the_screen

set scrolloff=10
if !exists('*VCenterCursor')
  augroup VCenterCursor
  au!
  au OptionSet *,*.*
    \ if and( expand("<amatch>")=='scrolloff' ,
    \         exists('#VCenterCursor#WinEnter,WinNew,VimResized') )|
    \   au! VCenterCursor WinEnter,WinNew,VimResized|
    \ endif
  augroup END
  function VCenterCursor()
    if !exists('#VCenterCursor#WinEnter,WinNew,VimResized')
      let s:default_scrolloff=&scrolloff
      let &scrolloff=winheight(win_getid())/2
      au VCenterCursor WinEnter,WinNew,VimResized *,*.*
        \ let &scrolloff=winheight(win_getid())/2
    else
      au! VCenterCursor WinEnter,WinNew,VimResized
      let &scrolloff=s:default_scrolloff
    endif
  endfunction
endif

autocmd BufWritePre *.py execute ':Black'

nnoremap <leader>zz :call VCenterCursor()<CR>
