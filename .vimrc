" Vim config. a work in progress

" Enable pathogen
execute pathogen#infect()

set tabstop=4
set expandtab
set autoindent
set smartindent
set shiftwidth=4
set modeline

set hlsearch
"set incsearch
syntax on
filetype plugin indent on

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

" Go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0
au FileType go set foldnestmax=1
au FileType go set foldmethod=syntax
