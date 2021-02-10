" Lazy load coc.nvim until i enter inset mode
augroup load_us_ycm
  autocmd!
  autocmd InsertEnter * call plug#load('coc.nvim')
                     \| autocmd! load_us_ycm
augroup END

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
nmap <leader>ac <Plug>(coc-codeaction)
nmap <M-CR> <Plug>(coc-fix-current) 

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" " Mappings using CoCList:
" " Show all diagnostics.
" nnoremap <silent> <space>ad  :<C-u>CocList diagnostics<cr>

" Fix Error color
hi! CocErrorSign guifg=#ff7070

" Coc explorer settings
nmap <space>e :CocCommand explorer<CR>

" Coc explorer settings
nmap <space>o :OR<CR>

" Restart coc
nmap <space>rc :CocRestart<CR>

" Format without save
nmap <space>t :noa w<CR>

" Coc snippets jumping
imap <tab> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<TAB>'

" Jump to coc problems
try
	nmap <silent> m :call CocAction('diagnosticNext')<cr>
	nmap <silent> M :call CocAction('diagnosticPrevious')<cr>
endtry

" nmap <silent> <leader>cc <Plug>(coc-cursors-position)
" nmap <silent> <leader>cd <Plug>(coc-cursors-word)
" nmap <expr> <silent> <C-d> <SID>select_current_word()
" nmap <leader>x  <Plug>(coc-cursors-operator)
" function! s:select_current_word()
"   if !get(g:, 'coc_cursors_activated', 0)
"     return "\<Plug>(coc-cursors-word)"
"   endif
"   return "*\<Plug>(coc-cursors-word):nohlsearch\<CR>"
" endfunc

" nmap <leader>cc <Plug>(coc-calc-result-append)

