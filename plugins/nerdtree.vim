"let NERDTreeWinPos = 'right'
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
        "let g:tagbar_iconchars = ['▶', '▼']  (default on Linux and Mac OS X)
        "let g:tagbar_iconchars = ['▷', '◢']
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 35
let NERDTreeChDirMode = 1
let NERDTreeKeepTreeInNewTab = 1
let NERDTreeIgnore = ['\.pyc','\~$','\.swp']
let g:nerdtree_tabs_open_on_console_startup = 1
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

