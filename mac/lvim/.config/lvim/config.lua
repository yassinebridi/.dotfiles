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
  {"jparise/vim-graphql"},
  {"AckslD/nvim-neoclip.lua"},
  {"ChristianChiarulli/vim-solidity"},
  {
    "tzachar/cmp-tabnine",
    config = function()
      local tabnine = require "cmp_tabnine.config"
      tabnine:setup {
        max_lines = 1000,
        max_num_results = 20,
        sort = true,
      }
    end,

    run = "./install.sh",
    requires = "hrsh7th/nvim-cmp",
  },
  -- {"steelsojka/headwind.nvim"}
}

-- require('neoclip').setup()

-- require "headwind".setup {
--   -- options here
-- }
