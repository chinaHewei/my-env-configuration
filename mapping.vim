let mapleader=" "

" easy change vim setting
nmap <leader>s :source $MYVIMRC<cr>
nmap <leader>e :e $MYVIMRC<cr>

" easy write file
noremap <leader>w :w<cr>

inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-d> <Delete>

" tab
map <leader>tC :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tp :tabp<cr>
map <leader>tn :tabn<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tL :tabs<cr>

" buffer
map <leader>bp :bp<cr>
map <leader>bn :bn<cr>
map <leader>bl :bl<cr>
map <leader>bf :bf<cr>
map <leader>bL :buffers<cr>

map <leader><S-f> :Fixmyjs<cr>

