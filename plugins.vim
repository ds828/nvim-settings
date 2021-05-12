" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
    " See what keys do like in emacs
    Plug 'liuchengxu/vim-which-key'
    " Sidebar file explorer
    "Plug 'preservim/nerdtree'
    " Cool Icons
    Plug 'ryanoasis/vim-devicons'
    " themes
    Plug 'joshdick/onedark.vim'
    " Better Comments
    Plug 'tpope/vim-commentary'
    " Status Line
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'maximbaz/lightline-ale'
    " Repeat stuff
    Plug 'tpope/vim-repeat'
    " highlight all matches under cursor
    Plug 'RRethy/vim-illuminate'
    " fzf
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " auto set indent settings
    Plug 'tpope/vim-sleuth'
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'
    " Start Screen
    Plug 'mhinz/vim-startify'
    " undo time travel
    Plug 'mbbill/undotree'
    " Find and replace
    Plug 'brooth/far.vim'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Debugging
    Plug 'puremourning/vimspector'
    " Multiple Cursors
    " TODO add this back in change from C-n
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Show IndentLine
    Plug 'Yggdroot/indentLine'
    " a class outline viewer
    Plug 'preservim/tagbar'
    " Git support
    Plug 'tpope/vim-fugitive'
    " Easily Create Gists
    Plug 'mattn/vim-gist'
    Plug 'mattn/webapi-vim'
    " Quickscope 
    Plug 'unblevable/quick-scope'
    " asynchronous linter
    Plug 'dense-analysis/ale'
    " coc looks like must use it, better than others
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " syntax highlight and get right filetype for svelte
    Plug 'leafOfTree/vim-svelte-plugin'
    
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
