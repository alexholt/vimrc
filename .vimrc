execute pathogen#infect()
if has("gui_running")
  "set guioptions=maxvert
  set lines=150
  set columns=150
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
  colorscheme slate
endif
set number
set expandtab
set shiftwidth=2
set softtabstop=2
set ts=2
set autoindent
set ls=2
set ignorecase
set smartcase
set nowrapscan
set nocompatible
set hlsearch
syntax on
filetype indent plugin on
au! BufRead,BufNewFile *.tsc setfiletype xml
au! BufRead,BufNewFile *.tc setfiletype xml
au! BufRead,BufNewFile *.wisp setfiletype clojure 
au! BufRead,BufNewFile *.sconstruct setfiletype python 
nnoremap <silent> <C-l> :nohlsearch<CR><C-l>
nnoremap <F1> :buffers<CR>:buffer<Space>
nnoremap <F2> :e %:p:h/
nnoremap <F3> :NERDTree<CR>
set pastetoggle=<F4>
"set autochdir
scriptencoding utf-8
set encoding=utf-8
"set encoding=iso-8859-1
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$

let g:syntastic_javascript_jshint_conf = "--file ../jshint_config"


let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1
let vimclojure#WantNailgun = 1
let vimclojure#NailgunClient = "ng"

"source ~/.vim/bundle/closetag/closetag.vim

"sudo command from http://stackoverflow.com/a/37042
cmap w!! w !sudo tee >/dev/null %

"Strip whitespace with ntpeters/vim-better-whitespace
autocmd BufWritePre * StripWhitespace
