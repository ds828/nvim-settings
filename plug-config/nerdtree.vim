" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * silent NERDTreeMirror
"display hidden files
let NERDTreeShowHidden=1
"display bookmark table
let NERDTreeShowBookmarks=1
"This setting governs whether the NERDTree window or the bookmarks table closes
"after opening a file with the |NERDTree-o|, |NERDTree-i|, |NERDTree-t| and
"|NERDTree-T| mappings.

"Value  | NERDTree Window Behavior
"-------+-------------------------------------------------------
"0      | No change
"1      | Closes after opening a file
"2      | Closes the bookmark table after opening a bookmark
"3(1+2) | Same as both 1 and 2
let NERDTreeQuitOnOpen=3
let NERDTreeWinSize=60
