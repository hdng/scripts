filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set background=dark
syntax on
" colorscheme desert

" Highight search term. Press Space to turn off highlighting and clear any message already displayed.
:set hlsearch
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"80 columns
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

"if exists('+colorcolumn')
"  set colorcolumn=80
"else
"  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif


