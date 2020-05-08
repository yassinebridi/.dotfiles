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

"
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

" Start Ranger
nmap <space>ra :RnvimrToggle<CR>

" Markdown preview settings
nmap <C-p> <Plug>MarkdownPreviewToggle
