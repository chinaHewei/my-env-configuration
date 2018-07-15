"let NERDTreeWinPos = 'right'
"let g:NERDTreeDirArrowExpandable = '▷'
"let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowHidden = 1
let NERDTreeWinSize = 35
let NERDTreeChDirMode = 1
let NERDTreeKeepTreeInNewTab = 1
let NERDTreeIgnore = ['\.pyc','\~$','\.swp', '\.git', '\.svn', '\.class', 'package-lock.json', '\.idea']
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

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

