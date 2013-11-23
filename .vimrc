" Vim config. a work in progress

" Enable pathogen
execute pathogen#infect()

set tabstop=4
set expandtab
set autoindent

set hlsearch
set incsearch
syntax enable

set t_Co=256
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme 256-jungle

autocmd FileType html setlocal tabstop=2 

"highlight OverLength ctermbg=green ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

