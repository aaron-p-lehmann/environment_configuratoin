colorscheme industry
filetype plugin indent on
syntax enable          "turn syntax highlighting on
set spell spelllang=en_us

" allow saving a sudo file if forgot to open as sudo
cmap w!! w !sudo tee % >/dev/null

set showmode "Display the current mode
set history=100 "Default was 20
set ruler "Show the cursor location

" Backspace over everything in insert mode
set backspace=indent,eol,start
" Invisible characters
set listchars=tab:▸\ ,trail:·,eol:$
set number                     "show line numbers
set showmatch                  "show matching brackets/prarens
set hlsearch                   "highlight searches
set incsearch                  "highlight as you search
set wildmenu                   "show list instead of just completing
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png,*.cml
set wildmode=list:longest,full "completion: list matches, longest common part, then all

set autoindent   "indent at same level as previous line
set shiftwidth=4 "use indents of 4 spaces
set tabstop=4
set expandtab    "use spaces for tabs
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yml setlocal ts=2 sts=2 sw=2 expandtab

match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$' " Highlight merge conflicts

" make moving through windows easier
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
" Double tab changes windows
map <Tab><Tab> <C-w>w

" Enhanced python highlighting
hi pythonLambdaExpr      ctermfg=105 guifg=#8787ff
hi pythonInclude         ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold
hi pythonClass           ctermfg=167 guifg=#FF62B0 cterm=bold gui=bold
hi pythonParameters      ctermfg=147 guifg=#AAAAFF
hi pythonParam           ctermfg=175 guifg=#E37795
hi pythonBrackets        ctermfg=183 guifg=#d7afff
hi pythonClassParameters ctermfg=111 guifg=#FF5353
hi pythonSelf            ctermfg=68  guifg=#5f87d7 cterm=bold gui=bold

hi pythonDottedName      ctermfg=74  guifg=#5fafd7

hi pythonError           ctermfg=196 guifg=#ff0000
hi pythonIndentError     ctermfg=197 guifg=#ff005f
hi pythonSpaceError      ctermfg=198 guifg=#ff0087

hi pythonBuiltinType     ctermfg=74  guifg=#9191FF
hi pythonBuiltinObj      ctermfg=71  guifg=#5faf5f
hi pythonBuiltinFunc     ctermfg=169 guifg=#d75faf cterm=bold gui=bold

hi pythonException       ctermfg=207 guifg=#CC3366 cterm=bold gui=bold
