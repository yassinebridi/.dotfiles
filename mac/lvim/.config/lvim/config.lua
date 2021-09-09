require('user/telescope')
require('user/keymaps')
require('user/macros')
require('user/settings')
require('user/which-key')
require('user/lsp')

-- Additional Plugins
lvim.plugins = {
  {"Pocco81/Catppuccino.nvim"},
  {"rmagatti/auto-session"},
  {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}},
  {"terryma/vim-multiple-cursors"},
  {"pantharshit00/vim-prisma"}
}
