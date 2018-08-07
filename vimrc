" vim is an extension of vi, this setting makes vim incompatible vi
set nocompatible
set lazyredraw
set modelines=0
set backspace=2

set history=50
set autowrite
set nobackup
set nowritebackup
set noswapfile

set encoding=utf8
set fileencoding=utf8

set wildmenu wildmode=full
set relativenumber
set number
set numberwidth=3
set ruler
set showcmd
set clipboard=unnamed
set textwidth=80
set colorcolumn=+1
set laststatus=2

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent
set cindent

set incsearch
set ignorecase
set smartcase
autocmd cursorhold * set nohlsearch
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>
set showmatch

"set foldmethod=indent

syntax on
syntax enable

inoremap <C-r>+ <C-g>u<C-\><C-o>"+gP

source $HOME/config/plugin.vim
source $HOME/config/mapping.vim
source $VIMRUNTIME/defaults.vim
source $VIMRUNTIME/indent.vim

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

runtime macros/matchit.vim

if &diff
  syntax off
endif

func! CompileAndRun()
  exec "w"
  exec "cd %:p:h"
  if &filetype == 'c'
    exec "!g++ % -o %<"
    exec "! ./%<"
  elseif &filetype == 'cpp'
    exec "!g++ % -o %<"
    exec "! ./%<"
  elseif &filetype == 'java'
    exec "!javac %"
    exec "!java %<"
  elseif &filetype == 'go'
    exec "!go run %"
  elseif &filetype == 'javascript'
    exec "!node %"
  elseif &filetype == 'sh'
    :!./%
  endif
endfunc

let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2

colorscheme PaperColor
