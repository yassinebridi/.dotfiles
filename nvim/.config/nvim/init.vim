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
nnoremap gj L

nnoremap <leader>m )
nnoremap <leader>c (

"Saving and quiting
nnoremap <leader>w :w<cr>
nnoremap <leader>q :q<cr>

"Enter functionality
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>

"Get out of insert mode
imap jk <Esc>
cmap jk <C-C>

"Source current file
nnoremap <leader>y :so %<cr>

"Search for something globaly in the file and select it
nnoremap <leader>S :%s//g<Left><Left>

" Surround
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap "" "sc"<C-r>s"<Esc>

" Command-line like forward-search
cnoremap <C-k> <Up>
" Command-line like reverse-search
cnoremap <C-j> <Down>

" Go to file under cursor under new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

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
Plug 'rbgrouleff/bclose.vim' " Ranger needs this
Plug 'rust-lang/rust.vim'
Plug 'lilydjwg/colorizer'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'

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

" let g:prettier#autoformat = 1

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
nnoremap <silent> <C-t> :nohl<CR><C-l>

" Format Documents
nmap <Leader>g <Plug>(Prettier)

" Ignore files and directories in .gitignore when fuzzy finding
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>ra :RnvimrToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype detect
syntax enable
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }
let g:airline_theme = "palenight"
set guifont=Jetbrains\ Mono\ Font\ 11

"Set the right colors in vim
set termguicolors
let &t_8f = "\e[38;2;%lu;%lu;%lum"
let &t_8b = "\e[48;2;%lu;%lu;%lum"

" Tab colors
hi TabLineFill guibg=#292D3E
hi TabLine guibg=#49475E
hi TabLineSel guibg=#7784e0

"Cursor line
set cursorline
set cursorcolumn

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Coc settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

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

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json,python setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>ad  :<C-u>CocList diagnostics<cr>

" Fix Error color
hi! CocErrorSign guifg=#dd5d32

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

" Coc explorer settings
nmap <space>e :CocCommand explorer<CR>

" Session settings
nnoremap <leader>s :ToggleWorkspace<CR>
let g:workspace_session_directory = $HOME . '/sessions'
"let g:workspace_autosave_always = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => FZF Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TextEdit might fail if hidden is not set.
" This is the default extra key bindings
    let g:fzf_action = {
      \ 'ctrl-t': 'tab split',
      \ 'ctrl-x': 'split',
      \ 'ctrl-v': 'vsplit' }

map <leader>f :Files<CR>
map <leader>bu :Buffers<CR>
nnoremap <leader>rg :Rg<CR>
nnoremap <leader>tg :Tags<CR>
nnoremap <leader>mr :Marks<CR>

let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.0,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"

"Get previews
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Rg previews
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }
