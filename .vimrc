set nu
syntax on

" automaticaly substitute single tab (\t) with 4 spaces
set tabstop=4 shiftwidth=4 expandtab

" map rustfmt to '\' + 'r' key sequence.
" will call rustfmt on the currently opened file.
nnoremap <leader>r :%!rustfmt<cr>

