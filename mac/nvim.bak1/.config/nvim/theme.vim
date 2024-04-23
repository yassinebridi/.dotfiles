filetype detect
syntax enable
set t_Co=256
set t_ut=
colorscheme gruvbox
" set guifont=JetBrains\ Mono\ Font\ 19
autocmd BufEnter,InsertLeave * :syntax sync fromstart

"Set the right colors in vim
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set showtabline=2
set guioptions-=e
set laststatus=2
set noshowmode

let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ],
      \   'right': [ ['close'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ },
      \ 'component_raw': {
      \   'buffers': 1
      \ },
      \ }
let g:lightline#bufferline#enable_nerdfont=1
let g:lightline#bufferline#clickable=1

" function! StatusLine(current, width)
"   let l:s = ''

"   if a:current
"     let l:s .= crystalline#mode() . crystalline#right_mode_sep('')
"   else
"     let l:s .= '%#CrystallineInactive#'
"   endif
"   let l:s .= ' %f%h%w%m%r '

"   let l:s .= '%='
"   if a:current
"     let l:s .= crystalline#left_sep('', 'Fill') . ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
"     let l:s .= crystalline#left_mode_sep('')
"   endif
"   if a:width > 80
"     let l:s .= ' %{&ft}[%{&fenc!=#""?&fenc:&enc}][%{&ff}] %l/%L %c%V %P '
"   else
"     let l:s .= ' '
"   endif

"   return l:s
" endfunction

" function! TabLine()
"   let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
"   return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
" endfunction

" let g:crystalline_enable_sep = 1
" let g:crystalline_statusline_fn = 'StatusLine'
" let g:crystalline_tabline_fn = 'TabLine'
" let g:crystalline_theme = 'purpura'

" For Transparent background
hi Normal ctermbg=NONE guibg=NONE
hi NonText ctermbg=NONE guibg=NONE
hi CursorLineNr ctermbg=NONE guibg=NONE
hi EndOfBuffer ctermbg=NONE guibg=NONE
hi SignColumn	ctermbg=NONE guibg=NONE
" hi LineNr ctermbg=NONE guibg=NONE guifg=#690da1 

" " Better spell checks colors
" hi SpellBad guibg=#fc6d6d ctermbg=224
