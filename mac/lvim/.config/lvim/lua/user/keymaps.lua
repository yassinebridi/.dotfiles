lvim.keys.normal_mode["m"] = "<cmd>lua vim.diagnostic.goto_next()<cr>"
lvim.keys.normal_mode["M"] = "<cmd>lua vim.diagnostic.goto_prev()<cr>"
lvim.builtin.which_key.mappings["f"] = { "<cmd>FzfLua files<cr>", "Find File" }
lvim.builtin.which_key.mappings["rg"] = { "<cmd>FzfLua grep_visual<cr>", "Grep" }
lvim.builtin.which_key.mappings["aa"] = { "<cmd>normal! ggVG<cr>", "Select All" }
lvim.builtin.which_key.mappings["<cr>"] = { "i<cr><esc>", "New Line" }
lvim.builtin.which_key.mappings["h"] = { "<cmd>lua require'mywords'.hl_toggle()<cr>", "Hightlight Word" }
lvim.builtin.which_key.mappings["u"] = { "<cmd>lua require'mywords'.uhl_all()<cr><cmd>nohlsearch<cr>", "Unhightlight All" }
lvim.builtin.which_key.mappings["lA"] = { function() vim.lsp.buf.code_action({ context = { only = { "source" }, diagnostics = {}, }, }) end,
  "Source Action" }
lvim.builtin.which_key.mappings["o"] = { function() vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } }) end,
  "Remove Unused Imports" }
lvim.builtin.which_key.mappings["lx"] = { function() vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports.ts" }, diagnostics = {} } }) end,
  "Add All Missing Import" }

vim.cmd [[
  vnoremap Y "ky
  vnoremap P "kp

  nnoremap fo zo
  nnoremap fc zc
  nnoremap fO zR
  nnoremap fC zM

  nnoremap gh ^
  nnoremap gl $
  vnoremap gh ^
  vnoremap gl $
  nnoremap k gk
  nnoremap j gj
  nnoremap <D-k> {
  nnoremap <D-j> }
  vnoremap <D-k> {
  vnoremap <D-j> }

  nnoremap vil $v0
  nnoremap yil $v0y
  nnoremap dil $v0d
  nnoremap cil $v0c

  nnoremap yia yi'
  nnoremap cia ci'
  nnoremap dia di'
  nnoremap via vi'

  nnoremap yiq yi"
  nnoremap ciq ci"
  nnoremap diq di"
  nnoremap viq vi"

  nnoremap yi` yi`
  nnoremap ci` ci`
  nnoremap di` di`
  nnoremap vi` vi`

  nnoremap yii yi{
  nnoremap cii ci{
  nnoremap dii di{
  nnoremap vii vi{

  nnoremap yin yi<
  nnoremap cin ci<
  nnoremap din di<
  nnoremap vin vi<

  nmap <C-a> ggVG

  inoremap <S-j> <Down>
  inoremap <S-k> <UP>

  nnoremap <leader>w :w<cr>
  nnoremap <leader>q :q<cr>

  nmap <CR> o<space><Esc>

  imap jk <Esc>
  cmap jk <C-C>

  vnoremap (( "sc(<C-r>s)<Esc>
  vnoremap {{ "sc{<C-r>s}<Esc>
  vnoremap [[ "sc[<C-r>s]<Esc>
  vnoremap "" "sc"<C-r>s"<Esc>
  vnoremap '' "sc'<C-r>s'<Esc>
  vnoremap `` "sc`<C-r>s`<Esc>

  noremap <Tab> >>
  noremap <S-tab> <<

  map <Leader>n *
  map <Leader>p #

  autocmd VimEnter * map <S-h> :bp<CR>
  autocmd VimEnter * map <S-l> :bn<CR>
  noremap <leader>s :bd<CR>

  nnoremap <leader>u za

  cnoremap <c-q> <c-f>i<c-o>q
]]
