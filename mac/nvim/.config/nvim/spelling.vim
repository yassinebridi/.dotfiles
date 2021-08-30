hi SpellBad guibg=red guifg=#1b002b

" Toggle spellchecking
function! ToggleSpellCheck()
  set spell!
  if &spell
    echo "Spellcheck ON"
  else
    echo "Spellcheck OFF"
  endif
endfunction

nnoremap <silent> <Leader>S :call ToggleSpellCheck()<CR>

" Spelling actions

" Fix spelling
nnoremap <leader>jf z=

" Add spelling to dictionary
nnoremap <leader>ja zg

" Remove spelling from dictionary
nnoremap <leader>jr zug
