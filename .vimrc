set number
set backspace=indent,eol,start

syntax enable
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'rust-lang/rust.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'dense-analysis/ale'
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'

" For Python I prefere to use only pyright, since default set of linters
" includes, flake8 which is too verbose.
let g:ale_linters = {'python': ['pyright'], 'rust': ['cargo', 'analyzer']}
"let g:ale_linters = {'rust': ['cargo', 'analyzer']}
let g:ale_fixers = {'*': ['trim_whitespace', 'remove_trailing_lines'], 'python': ['black', 'isort'], 'rust': ['rustfmt']}
let g:ale_linetes_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
let g:ale_completion_enabled = 1
let g:ale_warn_about_trailing_whitespace = 0
"set completeopt=menu,menuone,preview

Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()

" ctrl+f - open file explorer and find matches with fzf
nnoremap <silent> <C-f> :Files<CR>
" \+b - get list of open buffers
nnoremap <silent> <leader>b :Buffers<CR>
" \+c - get list of git commits
nnoremap <silent> <leader>c :Commits<CR>

" ctrl+p - go to symbol definition.
" ctrl+o - jump back to the previous location(default ALE's jump-motion)
nnoremap <C-p> :ALEGoToDefinition<CR>
