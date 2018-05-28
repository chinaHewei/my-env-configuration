" vim is an extension of vi, this setting makes vim incompatible vi
set nocompatible
set modelines=0
set backspace=2

set history=50
set autowrite
set nobackup
set nowritebackup
set noswapfile

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set encoding=utf8
set fileencoding=utf8

set wildmenu wildmode=full
set cursorline
"set cursorcolumn
set number
set numberwidth=5
set ruler
set showcmd
set clipboard=unnamed
set textwidth=80
set colorcolumn=+1
set laststatus=2
set mouse=a

syntax on
syntax enable

source ~/config/vimrc.plug

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

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

runtime macros/matchit.vim

set lcs=tab:>-,trail:˰,nbsp:˰
set list

let mapleader=" "
nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e $MYVIMRC<cr>
inoremap <leader>w <Esc>:w<cr>
noremap <leader>w :w<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>th :tabp<cr>
map <leader>tl :tabn<cr>
map <leader>bh :bp<cr>
map <leader>bl :bn<cr>
map <leader><S-f> :Fixmyjs<cr>
noremap <F12> :LeaderfFunctionAll!<cr>

"set background=dark
colorscheme desert

"colorscheme solarized
"let g:airline_theme='solarized'

"colorscheme molokai
"let g:airline_theme='molokai'

"colorscheme Tomorrow
"let g:airline_theme='tomorrow'

"colorscheme Tomorrow-Night
"let g:airline_theme='tomorrow'

"colorscheme Tomorrow-Night-Eighties
"let g:airline_theme='tomorrow'

"colorscheme Tomorrow-Night-Bright
"let g:airline_theme='tomorrow'

if &diff
  syntax off
endif

map <F6> :call CompileAndRun()<CR>
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
  elseif &filetype == 'sh'
    :!./%
  endif
endfunc

