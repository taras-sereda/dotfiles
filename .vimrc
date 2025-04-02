set number
set backspace=indent,eol,start

syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

" For Python I prefere to use only pyright, since default set of linters
" includes, flake8 which is too verbose.
let g:ale_linters = {'python': ['ruff'], 'rust': ['cargo', 'analyzer']}
"let g:ale_linters = {'rust': ['cargo', 'analyzer']}
let g:ale_fixers = {'*': ['trim_whitespace', 'remove_trailing_lines'], 'python': ['ruff', 'ruff_format'], 'rust': ['rustfmt']}
let g:ale_linetes_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_completion_enabled = 1
let g:ale_warn_about_trailing_whitespace = 0
"set completeopt=menu,menuone,preview

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

Plug 'preservim/nerdtree'
call plug#end()

" ctrl+f - open file explorer and find matches with fzf
nnoremap <silent> <C-f> :Files<CR>
" \+f - search keyword in files
nnoremap <silent> <leader>f :Rg<CR>
" \+b - get list of open buffers
nnoremap <silent> <leader>b :Buffers<CR>
" \+c - get list of git commits
nnoremap <silent> <leader>c :Commits<CR>

" ctrl+p - go to symbol definition.
" ctrl+o - jump to the previous location(default ALE's jump-motion)
" ctrl+i - jump to the next location
nnoremap <C-p> :ALEGoToDefinition<CR>

" toggle line numbers with F2
nnoremap <F2> :set number!<CR>
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :ALEFix<CR>
nnoremap <F5> :GitGutterToggle<CR>

command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)
