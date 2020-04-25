" Use system clipboard
set clipboard+=unnamedplus

setf dosini
set tabstop=2
set shiftwidth=2
set expandtab
set laststatus=2
set number
set autoindent
set nocompatible
set number relativenumber
set ignorecase
set smartcase
set encoding=utf-8


" Enable autocompletion:
set wildmode=longest,list,full

let mapleader = ' '

"Moving around
nnoremap gl $
nnoremap gh ^
nnoremap gk H
nnoremap gk H
nnoremap gj L

nnoremap <leader>m )
nnoremap <leader>c (

"Saving and quiting
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>
nnoremap <leader>wq :wq<cr>

"Enter functionality
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

"Get out of insert mode
imap jk <Esc>
vmap jk <Esc>
cmap jk <C-C>

"Source current file
nnoremap <leader>t :so %<cr>

"Search for something globaly in the file and select it
nnoremap <leader>S :%s//g<Left><Left>

" Surround
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap "" "sc"<C-r>s"<Esc>

" Command-line like forward-search
cnoremap <C-k> <Up>
" Command-line like reverse-search
cnoremap <C-j> <Down>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'kovetskiy/sxhkd-vim'
Plug 'drewtempelmeyer/palenight.vim' " Theme
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'mhinz/vim-startify' " Show recent files on neovim start
Plug 'francoiscabrol/ranger.vim' " Ranger
Plug 'rbgrouleff/bclose.vim' " Ranger needs this
Plug 'rust-lang/rust.vim'
Plug 'lilydjwg/colorizer'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown'] }
call plug#end()

" Lazy load coc.nvim until i enter inset mode
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('coc.nvim')
                     \| autocmd! load_us_ycm
augroup END

let g:prettier#autoformat = 1

" Vim-airline
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Autoload
autocmd BufWritePost *Xresources,*Xdefaults !xrdb %
autocmd BufWritePost *sxhkdrc !pkill -USR1 sxhkd

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Splits and Tabbed Files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set splitbelow splitright

" Remap splits navigation to just CTRL + hjkl
nnoremap <C-H> <C-w>h
nnoremap <C-K> <C-w>j
nnoremap <C-J> <C-w>k
nnoremap <C-L> <C-w>l

" Make adjusing split sizes a bit more friendly
noremap <silent> H :vertical resize +3<CR>
noremap <silent> J :resize +3<CR>
noremap <silent> K :resize -3<CR>
noremap <silent> L :vertical resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>tl <C-w>t<C-w>H
map <Leader>tj <C-w>t<C-w>K

" Split shortcuts
noremap <Tab> >>
noremap <S-Tab> <<

" Split shortcuts
map <Leader>v :vsplit<CR>
map <Leader>h :split<CR>

" Similar words 
map <Leader>n *
map <Leader>p #

" Moving between tabs
autocmd VimEnter * map <M-h> :tabp<CR>
autocmd VimEnter * map <M-l> :tabn<CR>

" Unhighlight searched words
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Format Documents
nmap <Leader>g <Plug>(Prettier)

" Ignore files and directories in .gitignore when fuzzy finding
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" open ranger when vim open a directory
"let g:ranger_replace_netrw = 1
" Open files from ranger in a new tab
let g:ranger_map_keys = 0
map <leader>f :RangerNewTab<CR>
" identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype detect
syntax enable
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"

"Set the right colors in vim
set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

" Tab colors
hi TabLineFill guibg=#292D3E
hi TabLine guibg=#49475E
hi TabLineSel guibg=#6E617D

"Cursor line
set cursorline
set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
set hidden

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" GoTo code navgation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> <C-k> :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Fix Error color
hi! CocErrorSign guifg=#dd5d32

" Rust settings
let g:rustfmt_autosave = 1
let g:coc_user_config = {}
let g:coc_user_config['coc.preferences.jumpCommand'] = ':vsplit'

" vim-commentary settings
autocmd FileType typescript.tsx setlocal commentstring={/*\ %s\ */}
autocmd FileType typescript.ts setlocal commentstring=//\ %s
autocmd FileType rust setlocal commentstring=//\ %s
autocmd FileType bash setlocal commentstring=#\ %s
autocmd FileType python setlocal commentstring=#\ %s
autocmd FileType nvim setlocal commentstring="\ %s

" Indent Setting
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2b3042 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#2e3345 ctermbg=4
