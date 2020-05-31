"""""""""""
" GENERAL "
"""""""""""
" Change the selected text in the whole line
vnoremap <leader>cw y:.s/"//g<left><left>

""""""""""""""
" TYPESCRIPT "
""""""""""""""

" JSX Change a tag with it's closing tag
let @k = 'vbd%pldwhyiwPlde'
inoremap <C-b> <esc>@k

" JSX Tag completion
inoremap <M-tab> <esc>"ayiwi<ea></"apa>bba

" Enclose a bunch of tags with a Box Tag
vnoremap <leader>tg dOBox<esc><esc>"ayiwi<ea></"apa>bbaPka
        
" JSX Tag complection for the whole components
inoremap <C-l> <esc>diw[(opbi<ea>[(%Opbi</ea>

" Console.log macos
nnoremap <leader>lt yiwoconsole.log("pa: ", pa);gh

" Code generation
inoremap <M-[> ={}ha
inoremap <M-'> =""ha

" Code generation
let @1 = 'da{[]}jkhhpa,pa,pa,pa,p'
vnoremap <leader>rs @1
"
" RUST "
""""""""
" println! macos
nnoremap <leader>lr yiwoprintln!("{:?}", pa);    
