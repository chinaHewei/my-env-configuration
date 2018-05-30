call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'bling/vim-bufferline'
Plug 'ryanoasis/vim-devicons'

Plug 'tpope/vim-fugitive'
" You can jump between hunks with [c and ]c.
" You can preview, stage, and undo hunks with 
" <leader>hp, <leader>hs, and <leader>hu respectively.
Plug 'airblade/vim-gitgutter'

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
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

Plug 'easymotion/vim-easymotion'

Plug 'majutsushi/tagbar'

Plug 'Chiel92/vim-autoformat'
call plug#end()

source ~/config/plugins/airline.vim
source ~/config/plugins/nerdtree.vim
source ~/config/plugins/ale.vim
source ~/config/plugins/leaderf.vim
source ~/config/plugins/autocomplete.vim
source ~/config/plugins/easy-motion.vim
source ~/config/plugins/tagbar.vim
source ~/config/plugins/autoformat.vim

let javascript_enable_domhtmlcss = 1

"  gitgutter setting
set updatetime=1000
set signcolumn=yes

