" vim is an extension of vi, this setting makes vim incompatible vi
set nocompatible
set modelines=0
set backspace=2

au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
au BufWrite /private/etc/pw.* set nowritebackup nobackup

set encoding=utf8
set fileencoding=utf8

set wildmenu wildmode=full
"set cursorline
"set cursorcolumn
set number
set ruler
set showcmd
set clipboard=unnamed
set colorcolumn=81
set textwidth=80
set laststatus=2
set mouse=a

syntax on
syntax enable

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

set lcs=tab:>-,eol:$
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

"filetype plugin indent on
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" commenter: \cc \cu, toggle comment \c<space>
Plug 'scrooloose/nerdcommenter'

" provides mappings to easily delete, change and add such surroundings in pairs.
Plug 'tpope/vim-surround'

"used for locating files, buffers, mrus, tags in large project
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

Plug 'mattn/emmet-vim'
Plug 'ternjs/tern_for_vim'
Plug 'pangloss/vim-javascript'
Plug 'hail2u/vim-css3-syntax'
Plug 'ruanyl/vim-fixmyjs'

" autocomplete and code snippets
Plug 'Valloric/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'

" provide multiple line edit
Plug 'terryma/vim-multiple-cursors'

" provide linting
Plug 'w0rp/ale'

" Displaying thin vertical lines at each indentation level for code indented 
" with spaces
Plug 'Yggdroot/indentLine'
call plug#end()

let g:airline_powerline_fonts = 1
let g:airline_detect_modified = 1
let g:airline_detect_paste = 1
let g:airline_detect_crypt = 1
let g:airline_detect_spell = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

if !exists('g:airline_symbols') "define airline sysmbols
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = ''

let NERDTreeMinimalUI=1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowHidden=1
let NERDTreeWinSize=40
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
map <F2> :NERDTreeToggle<CR>

let javascript_enable_domhtmlcss = 1

" LeaderF settings
let g:Lf_WindowPosition='right'   
let g:Lf_WindowHeight=0.30
let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

" ale setting
"let g:ale_sign_error = '✗'
"let g:ale_sign_warning = ''
let g:ale_sign_column_always = 1
let g:ale_keep_list_window_open = 1

let g:ale_echo_msg_error_str = 'Error'
let g:ale_echo_msg_warning_str = 'Warning'
let g:ale_echo_msg_format = '[%linter%] %code%: %s [%severity%]'

let g:indentLine_leadingSpaceEnabled = 1

