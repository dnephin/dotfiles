" Vim config. a work in progress

" Enable pathogen
execute pathogen#infect()

set tabstop=4
set expandtab
set autoindent

set hlsearch
set incsearch

set t_Co=256
colorscheme 256-jungle

autocmd FileType html setlocal tabstop=2 

"highlight OverLength ctermbg=green ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

