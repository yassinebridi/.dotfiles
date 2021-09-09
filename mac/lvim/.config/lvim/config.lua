require('user/telescope')
require('user/keymaps')
require('user/macros')
require('user/settings')
require('user/which-key')
require('user/lsp')

-- Additional Plugins
lvim.plugins = {
  {"jose-elias-alvarez/nvim-lsp-ts-utils", requires = { "jose-elias-alvarez/null-ls.nvim" }},
  {"JoosepAlviste/nvim-ts-context-commentstring"},
  {"windwp/nvim-ts-autotag"},
  {"Pocco81/Catppuccino.nvim"},
  {"rmagatti/auto-session"},
  {"ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" }},
  {"terryma/vim-multiple-cursors"},
  {"pantharshit00/vim-prisma"},
}
