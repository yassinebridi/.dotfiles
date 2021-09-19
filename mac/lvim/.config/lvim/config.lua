require('user/telescope')
require('user/keymaps')
require('user/macros')
require('user/settings')
require('user/which-key')
require('user/lsp')
require('user/plugins-settings')

-- Additional Plugins
lvim.plugins = {
  {"jose-elias-alvarez/nvim-lsp-ts-utils", requires = { "jose-elias-alvarez/null-ls.nvim" }},
  {"JoosepAlviste/nvim-ts-context-commentstring"},
  {"windwp/nvim-ts-autotag"},
  {"rmagatti/auto-session"},
  {"ellisonleao/gruvbox.nvim", requires = { "rktjmp/lush.nvim" }},
  {"terryma/vim-multiple-cursors"},
  {"norcalli/nvim-colorizer.lua"},
  {"pantharshit00/vim-prisma"},
  {"jparise/vim-graphql"}
}
