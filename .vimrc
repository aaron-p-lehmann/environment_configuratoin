" Below was stolen from cmaynard
" allow saving a sudo file if forgot to open as sudo
cmap w!! w !sudo tee % >/dev/null
set showmode "Display the current mode
set history=100 "Default was 20
set ruler "Show the cursor location
set listchars=tab:▸\ ,trail:·,eol:$
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

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Color scheme
Plug 'joshdick/onedark.vim'

" Syntax highlighting
Plug 'sheerun/vim-polyglot'

" PEP08 compliance
Plug 'Vimjas/vim-python-pep8-indent'

" Linting
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()

" Python linters are pylint and flake8
let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \}
nmap <F10> :ALEFix<CR>
let g:ale_fix_on_save = 1

" Show linter errors and warnings
function! LinterStatus() abort
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? '✨ all good ✨' : printf(
        \   '😞 %dW %dE',
        \   all_non_errors,
        \   all_errors
        \)
endfunction

set statusline=
set statusline+=%m
set statusline+=\ %f
set statusline+=%=
set statusline+=\ %{LinterStatus()}
" END vim-for-python
