" Moving around
nnoremap gh ^
nnoremap gl $
nnoremap k gk
nnoremap j gj

" Select all
nmap <leader>aa ggVG

" Tab like movement in autocompletion
inoremap <M-j> <Down>
inoremap <M-k> <UP>

"Saving and quiting
nnoremap <leader>w :w<cr>
nnoremap <leader>s :q<cr>

"Enter functionality
nmap <leader><CR> i<CR><Esc>
nmap <CR> o<Esc>

"Get out of insert mode
imap jk <Esc>
cmap jk <C-C>

"Source current file
nnoremap <leader>y :so %<cr>

" Surround
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap {{ "sc{<C-r>s}<Esc>
vnoremap "" "sc"<C-r>s"<Esc>
vnoremap '' "sc'<C-r>s'<Esc>

" Command-line like forward-g
cnoremap <M-k> <Up>
" Command-line like reverse-g
cnoremap <M-j> <Down>

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
autocmd VimEnter * map <M-h> :bp<CR>
autocmd VimEnter * map <M-l> :bn<CR>
noremap <leader>q :bd<CR>

" Unhighlight ged words
nnoremap <silent> <C-t> :nohl<CR><C-l>

" Markdown preview settings
nmap <C-p> <Plug>MarkdownPreviewToggle
