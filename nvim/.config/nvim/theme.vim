filetype detect
syntax enable
set t_Co=256
set t_ut=
colorscheme purpura
let g:airline_theme = 'purpura'
set guifont=Jetbrains\ Mono\ Font\ 11

"Set the right colors in vim
set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

"Cursor line
set cursorline
set cursorcolumn

" Vim-airline
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

" Indent Setting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2a0340 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#290345 ctermbg=4

