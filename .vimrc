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
"set background=light
let g:solarized_termcolors=256
colorscheme solarized
"colorscheme 256-jungle

"highlight OverLength ctermbg=green ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

" Save folds using a view
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Syntax highlight hbs files
au BufRead,BufNewFile *.hbs set syntax=handlebars


" Wrap lines at 80
set formatoptions+=w
set tw=80
