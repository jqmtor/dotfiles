execute pathogen#infect()
filetype plugin indent on

let &t_Co=256
if &term =~ '256color'
    " disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
    " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

colorscheme Tomorrow-Night-Eighties
syntax on

" Do not enforce Vi compatibility
set nocompatible

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Show white spaces
set list
" Characters to replace white spaces
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:+

" Set ruler information in bottom right corner
set ruler

" Do not wrap lines
set nowrap
" Set color of the 80th column, to let you know when to wrap
set colorcolumn=80

set autoindent
" Number of spaces to use for each step of (auto)indent.
set shiftwidth=2

" Spaces instead of tabs
set expandtab
" Number of columns a tab counts for (to display existing text)
set tabstop=2
"Number of colums a tab counts for when you hit tab, in insert mode
set softtabstop=2

" Correct backspace behavior
set backspace=indent,eol,start

" Do not use backup and swap files
set nobackup
set noswapfile

" Highlight cursor line
set cursorline

" Set search incremental matching
set incsearch

" Set map leader key
let mapleader = ","

" Remove scrolling bars from the GUI
set guioptions-=r
set guioptions-=l
set guioptions-=b

" Add ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

"http://jeffkreeftmeijer.com/2013/vims-new-hybrid-line-number-mode/
set relativenumber
set number

" ctrlp options
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['.git', '.hg', 'Rakefile']
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn))|(node_modules|vendor|coverage|target)$'
" use silver searcher
" http://robots.thoughtbot.com/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l -i --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" map fd to ESC
:inoremap fd <Esc>

nnoremap \ :Ag<SPACE>

" vim-rails options
map <Leader>m :Rmodel <CR>
map <Leader>c :Rcontroller <CR>
map <Leader>v :Rview <CR>
map <Leader>u :Runittest <CR>

" vim-test options
"
" select test running strategy
let g:test#strategy = 'vimux'    " VimuxRunCommand(<test commmand>)"

"
" mappings
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>l :TestLast<CR>

" vim sexp
let g:sexp_enable_insert_mode_mappings = 0
