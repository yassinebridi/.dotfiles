require('telescope')
require('keymaps')
require('macros')
require('settings')
require('lsp')

-- Additional Plugins
lvim.plugins = {
  {"Pocco81/Catppuccino.nvim"},
  {"rmagatti/auto-session"},
  {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}},
  {"terryma/vim-multiple-cursors"}
}
