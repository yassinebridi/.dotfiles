-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  vim.cmd [[
    inoremap <C-l> <esc>diw[(opbi<ea>[(%Opbi</ea>
    inoremap <C-x> <esc>yiwi<ea></pa>bba
    nnoremap <leader>lt yiwoconsole.log('pa: a', pa);
  ]]
}
