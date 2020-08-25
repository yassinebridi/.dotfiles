" Moving around
nnoremap gh ^
nnoremap gl $
vnoremap gh ^
vnoremap gl $
nnoremap k gk
nnoremap j gj
nnoremap <M-k> {
nnoremap <M-j> }
vnoremap <M-k> {
vnoremap <M-j> }

" Remove
nnoremap cia ci'
nnoremap ciq ci"
nnoremap dia di'
nnoremap diq di"

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
nnoremap <leader>y :w<cr> :so ~/.config/nvim/init.vim<cr>

" Surround
vnoremap (( "sc(<C-r>s)<Esc>
vnoremap {{ "sc{<C-r>s}<Esc>
vnoremap [[ "sc[<C-r>s]<Esc>
vnoremap "" "sc"<C-r>s"<Esc>
vnoremap '' "sc'<C-r>s'<Esc>
vnoremap `` "sc`<C-r>s`<Esc>

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

" Fold toggle
nnoremap <leader>u za

" Map alt + {h,l} to move the cursor left and right
imap <M-h> <left>
imap <M-l> <right>

" End macros in command mode
cnoremap <c-q> <c-f>i<c-o>q

" Map alt + space to remove characters
imap <M-space> <backspace>

" Map alt + space to remove characters
" nnoremap <M-o> <C-a>
nnoremap <M-i> <C-x>
nnoremap <M-o> <C-a>

" map {}
inoremap <M-r> }
inoremap <M-e> {

" map .
nnoremap <M-p> .

" Toggle Markdown Preview
nnoremap <leader>mp :MarkdownPreview<CR>
