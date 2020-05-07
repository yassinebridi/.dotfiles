"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use system clipboard
set clipboard+=unnamedplus

setf dosini
set wildmenu
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
nnoremap k gk
nnoremap j gj

" Tab like movement in autocompletion
inoremap <M-j> <Down>
inoremap <M-k> <UP>

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

"Compile current file
nnoremap <leader>c :botright 50vsp <bar> terminal python %<cr>

" Surround
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap {{ "sc{<C-r>s}<Esc>
vnoremap "" "sc"<C-r>s"<Esc>
vnoremap '' "sc'<C-r>s'<Esc>

" Command-line like forward-g
cnoremap <M-k> <Up>
" Command-line like reverse-g
cnoremap <M-j> <Down>

" Go to file under cursor under new tab
nnoremap gf <C-W>gf
vnoremap gf <C-W>gf

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MACROS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" JSX Tag completion
inoremap <M-tab> <esc>yiwi<ea></pa>bba

" JSX Tag complection for the whole components
inoremap <C-l> <esc>diw[(opbi<ea>[(%Opbi</ea>

" Console.log macos
nnoremap <leader>l yiwoconsole.log("pa: ", pa);gh

" Code generation
inoremap <M-[> ={}ha
inoremap <M-'> =""ha

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'yassinebridi/vim-purpura'
Plug 'kovetskiy/sxhkd-vim'
Plug 'drewtempelmeyer/palenight.vim' " Theme
Plug 'neoclide/coc.nvim', {'branch': 'release', 'on': []}
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'rbgrouleff/bclose.vim' " Ranger needs this
Plug 'lilydjwg/colorizer'
Plug 'tpope/vim-commentary'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-rooter'
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'jeetsukumaran/vim-indentwise'

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


" Split shortcuts
noremap <Tab> >>
noremap <S-tab> <<

" Split shortcuts
map <Leader>v :vsplit<CR>
map <Leader>h :split<CR>

" Similar words 
map <Leader>n *
map <Leader>p #

" Moving between tabs
autocmd VimEnter * map <M-h> :tabp<CR>
autocmd VimEnter * map <M-l> :tabn<CR>

" Unhighlight ged words
nnoremap <silent> <C-t> :nohl<CR><C-l>

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
au BufNewFile,BufRead *.py setlocal filetype=python

" Make Ranger replace netrw and be the file explorer
let g:rnvimr_ex_enable = 1

nmap <space>ra :RnvimrToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Themes
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

command! -nargs=0 Prettier :CocCommand prettier.formatFile

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
nmap <silent> <M-CR> <Plug>(coc-fix-current) 

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>ad  :<C-u>CocList diagnostics<cr>

" Fix Error color
hi! CocErrorSign guifg=#ff7070

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
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#2a0340 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#290345 ctermbg=4

" Coc explorer settings
nmap <space>e :CocCommand explorer<CR>

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
nnoremap <leader>mr :Marks<CR>

" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.0,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg -g !.git -g !node_modules -g !.next --files --hidden"

"Get previews
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)

" Rg previews
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg -g !yarn.lock --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
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

" Markdown preview settings
nmap <C-p> <Plug>MarkdownPreviewToggle
