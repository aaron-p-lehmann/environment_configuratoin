" Below was stolen from cmaynard
" allow saving a sudo file if forgot to open as sudo
cmap w!! w !sudo tee % >/dev/null
set showmode "Display the current mode
set history=100 "Default was 20
set ruler "Show the cursor location
set number                     "show line numbers
set showmatch                  "show matching brackets/prarens
set hlsearch                   "highlight searches
set incsearch                  "highlight as you search

" make moving through windows easier
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
" Double tab changes windows
map <Tab><Tab> <C-w>w
" End cmaynard

" Below is a paired down version of https://www.vimfromscratch.com/articles/vim-for-python
set nocompatible
" Folds on indents for Python files
au BufNewFile,BufRead *.py set foldmethod=indent
au BufRead,BufNewFile *.py set expandtab
" Use old regexp engine for typescript files
au BufNewFile,BufRead *.tsx set re=0

" END vim-for-python
"
colorscheme industry
set listchars=precedes:^,tab:<->,trail:.,eol:$
" configure expanding of tabs for various file types

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
"
" --------------------------------------------------------------------------------
set expandtab          " enter spaces when tab is pressed
set textwidth=120      " break lines when line length increases
set tabstop=4          " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4       " number of spaces to use for auto indent
set autoindent         " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start
