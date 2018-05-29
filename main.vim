call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
" You can jump between hunks with [c and ]c.
" You can preview, stage, and undo hunks with 
" <leader>hp, <leader>hs, and <leader>hu respectively.
Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'jistr/vim-nerdtree-tabs'
"Plug 'Xuyuanp/nerdtree-git-plugin'

" commenter: \cc \cu, toggle comment \c<space>
Plug 'scrooloose/nerdcommenter'

" provides mappings to easily delete, change and add 
" such surroundings in pairs.
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

" Displaying thin vertical lines at each indentation level 
" for code indented with spaces
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

"define airline sysmbols
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.branch = ''

source ~/config/plugins/nerdtree.vim
source ~/config/plugins/ale.vim

let javascript_enable_domhtmlcss = 1

" LeaderF settings
"let g:Lf_WindowPosition='right'
let g:Lf_WindowHeight=0.30
let g:Lf_PreviewResult = {'Function':0, 'Colorscheme':1}
let g:Lf_WildIgnore = {
  \ 'dir': ['.svn','.git','.hg'],
  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \}

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


" indentline setting
"let g:indentLine_leadingSpaceEnabled = 1

"  gitgutter setting
set updatetime=1000
set signcolumn=yes

