lua << EOF 
require'lspconfig'.tsserver.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.rust_analyzer.setup{}
require'lsp_config'
EOF 

" Set completeopt to have a better completion experience
set completeopt=menuone,noinsert,noselect
"map <c-p> to manually trigger completion
imap <silent> <c-space> <Plug>(completion_trigger)

" require'lspconfig'.graphql.setup{}

" " GoTo code navigation.
" nnoremap <silent>gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" nnoremap <silent>gt    <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent>gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent><c-]> <cmd>lua vim.lsp.buf.definition()<CR>

" " Hovers
" nnoremap <silent>K     <cmd>lua vim.lsp.buf.hover()<CR>
" nnoremap <silent><c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>

" " Cycle between diagnosctic
" nnoremap <silent>m <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" nnoremap <silent>M <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>


" " Actions
" inoremap <c-space> <cmd>lua vim.lsp.buf.completion()<CR>
" nnoremap <leader>ac <cmd>lua vim.lsp.buf.code_action()<CR>

" " Symbol renaming.
" nmap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>

