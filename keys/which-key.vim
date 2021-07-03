" Leader Key Maps

let @s = 'veS"'

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}

" Map leader to which_key
nnoremap <silent> <leader> :WhichKey '<leader>'<CR>
"nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<leader>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" let g:which_key_position = 'botright'
" let g:which_key_position = 'topleft'
" let g:which_key_vertical = 1

" Change the colors if you want

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['/'] = [ ':call Comment()'                                 , 'comment' ]
let g:which_key_map[';'] = [ ':Commands'                                       , 'commands' ]
let g:which_key_map['='] = [ '<C-W>='                                          , 'balance windows' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --preset floating --toggle --sources=file+'   , 'explorer' ]
let g:which_key_map['h'] = [ '<C-W>s'                                          , 'split below' ]
let g:which_key_map['n'] = [ '<Plug>(coc-diagnostic-next-error)'               , 'next error']
let g:which_key_map['N'] = [ ':let @/ = ""'                                    , 'no highlight' ]
let g:which_key_map['p'] = [ '<Plug>(coc-diagnostic-prev-error)'               , 'prev error' ]
let g:which_key_map['T'] = [ ':BTags'                                          , 'buffer tags' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                                 , 'undo tree' ]
let g:which_key_map['v'] = [ '<C-W>v'                                          , 'split right' ]
let g:which_key_map['z'] = [ ':TagbarToggle'                                   , 'Tagbar' ]

" Group mappings

" b is for buffer
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : [':call lightline#bufferline#go(1)'          , 'buffer 1'],
      \ '2' : [':call lightline#bufferline#go(2)'          , 'buffer 2'],
      \ '3' : [':call lightline#bufferline#go(3)'          , 'buffer 3'],
      \ '4' : [':call lightline#bufferline#go(4)'          , 'buffer 4'],
      \ '5' : [':call lightline#bufferline#go(5)'          , 'buffer 5'],
      \ '6' : [':call lightline#bufferline#go(6)'          , 'buffer 6'],
      \ '7' : [':call lightline#bufferline#go(7)'          , 'buffer 7'],
      \ '8' : [':call lightline#bufferline#go(8)'          , 'buffer 8'],
      \ '9' : [':call lightline#bufferline#go(9)'          , 'buffer 9'],
      \ 'd' : [':bd'                                       , 'delete-buffer'],
      \ 'f' : ['bfirst'                 , 'first-buffer'],
      \ 'l' : ['blast'                  , 'last buffer'],
      \ 'n' : ['tabnew'                 , 'new buffer'],
      \ '>' : ['bnext'                  , 'next-buffer'],
      \ '<' : ['bprevious'              , 'previous-buffer'],
      \ '?' : ['Buffers'                , 'fzf-buffer'],
      \ }

" d is for debug
let g:which_key_map.d = {
      \ 'name' : '+debug' ,
      \ 'b' : ['<Plug>VimspectorToggleBreakpoint'              , 'breakpoint'],
      \ 'B' : ['<Plug>VimspectorToggleConditionalBreakpoint'   , 'conditional breakpoint'],
      \ 'c' : ['<Plug>VimspectorRunToCursor'                   , 'run to cursor'],
      \ 'd' : ['<Plug>VimspectorContinue'                      , 'continue'],
      \ 'f' : ['<Plug>VimspectorAddFunctionBreakpoint'         , 'function breakpoint'],
      \ 'm' : [':MaximizerToggle'                              , 'maximize window'],
      \ 'o' : ['<Plug>VimspectorStepOver'                      , 'step over'],
      \ 'O' : ['<Plug>VimspectorStepOut'                       , 'step out'],
      \ 'i' : ['<Plug>VimspectorStepInto'                      , 'step into'],
      \ 'p' : ['<Plug>VimspectorPause'                         , 'pause'],
      \ 'r' : ['<Plug>VimspectorRestart'                       , 'restart'],
      \ 's' : ['<Plug>VimspectorStop'                          , 'stop'],
      \ }

" r is for find and replace
let g:which_key_map.r = {
      \ 'name' : '+find & replace' ,
      \ 'b' : [':Farr --source=vimgrep'    , 'buffer'],
      \ 'p' : [':Farr --source=rgnvim'     , 'project'],
      \ }

" f is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'              , 'history'],
      \ 'a' : [':Ag'                    , 'text Ag'],
      \ 'B' : [':Buffers'               , 'buffers'],
      \ 'b' : [':BLines'                , 'current buffer'],
      \ 'C' : [':Commits'               , 'Git commits'],
      \ 'c' : [':BCommits'              , 'Git commits for the current buffer'],
      \ 'G' : [':GFiles?'               , 'Git status'],
      \ 'h' : [':History'               , 'file history'],
      \ 'H' : [':History:'              , 'command history'],
      \ 'l' : [':Lines'                 , 'lines'] ,
      \ 'M' : [':Maps'                  , 'normal maps'] ,
      \ 'p' : [':Helptags'              , 'help tags'] ,
      \ 'P' : [':Tags'                  , 'project tags'],
      \ 'S' : [':Colors'                , 'color schemes'],
      \ 'r' : [':Rg'                    , 'text Rg'],
      \ 'T' : [':BTags'                 , 'buffer tags'],
      \ 'w' : [':Windows'               , 'search windows'],
      \ 'y' : [':Filetypes'             , 'file types'],
      \ 'z' : [':FZF'                   , 'FZF'],
      \ }

" S is for session
let g:which_key_map.S = {
      \ 'name' : '+Session' ,
      \ 'c' : [':SClose'          , 'Close Session']  ,
      \ 'd' : [':SDelete'         , 'Delete Session'] ,
      \ 'l' : [':SLoad'           , 'Load Session']     ,
      \ 's' : [':Startify'        , 'Start Page']     ,
      \ 'S' : [':SSave'           , 'Save Session']   ,
      \ }

" g is for git
let g:which_key_map.g = {
      \ 'name' : '+Git' ,
      \ 'a' : [':Git add .'                        , 'add all'],
      \ 'A' : [':CocCommand fzf-preview.GitStatus' , 'actions'],
      \ 'b' : [':Git blame'                        , 'blame'],
      \ 'c' : [':Git commit'                       , 'commit'],
      \ 'd' : [':Git diff'                         , 'diff'],
      \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      \ 'l' : [':Git log'                          , 'log'],
      \ 'p' : [':Git push'                         , 'push'],
      \ 'P' : [':Git pull'                         , 'pull'],
      \ 'r' : [':GRemove'                          , 'remove'],
      \ 's' : [':Gstatus'                          , 'status'],
      \ }

" G is for Gist
let g:which_key_map.G = {
      \ 'name' : '+Gist' ,
      \ 'a' : [':Gist -a'                          , 'post gist anon'],
      \ 'b' : [':Gist -b'                          , 'post gist browser'],
      \ 'd' : [':Gist -d'                          , 'delete gist'],
      \ 'e' : [':Gist -e'                          , 'edit gist'],
      \ 'l' : [':Gist -l'                          , 'list public gists'],
      \ 's' : [':Gist -ls'                         , 'list starred gists'],
      \ 'm' : [':Gist -m'                          , 'post gist all buffers'],
      \ 'p' : [':Gist -P'                          , 'post public gist '],
      \ 'P' : [':Gist -p'                          , 'post private gist '],
      \ }

" l is for language server protocol with jedi
"let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'a' : [':call jedi#goto_assignments()'       , 'assignments'],
      \ 'd' : [':call jedi#goto_definitions()'       , 'definitions'],
      \ 'g' : [':call jedi#goto()'                   , 'go to'],
      \ 'k' : [':call jedi#documentation()'          , 'document'],
      \ 'u' : [':call jedi#usage()'          	     , 'usage'],
      \ 'r' : [':call jedi#rename()'          	     , 'rename'],
      \ 's' : [':call jedi#goto_stubs()'             , 'stubs'],
      \ 'Q' : [':copen'          	                 , 'open quickfix'],
      \ 'q' : [':ccl'          	                 , 'close quickfix']
      \ }

let g:which_key_map.l = {
      \ 'name' : '+lsp' ,
      \ 'd' : ['<Plug>(coc-definition)'              , 'definition'],
      \ 'D' : ['<Plug>(coc-declaration)'             , 'declaration'],
      \ 'q' : ['<Plug>(coc-fix-current)'             , 'quickfix'],
      \ 'r' : ['<Plug>(coc-references)'              , 'references'],
      \ 'R' : ['<Plug>(coc-rename)'                  , 'rename'],
      \ 't' : ['<Plug>(coc-type-definition)'         , 'type definition'],
      \ 'I' : [':CocList diagnostics'                , 'diagnostics'],
      \ 'N' : ['<Plug>(coc-diagnostic-next)'         , 'next diagnostic'],
      \ 'n' : ['<Plug>(coc-diagnostic-next-error)'   , 'next error'],
      \ 'O' : [':CocList outline'                    , 'search outline'],
      \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'prev diagnostic'],
      \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'prev error'],
      \ }

" t is for terminal
let g:which_key_map.t = {
      \ 'name' : '+terminal' ,
      \ 't' : [':10split | terminal'                  , 'buttom terminal'],
      \ 'T' : [':80vsplit | terminal'                 , 'right terminal'],
      \ 'p' : [':10split | terminal python3'          , 'python3 terminal'],
      \ }

" Register which key map
call which_key#register(';', "g:which_key_map")
