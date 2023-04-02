-------------------------------------
-- Settings for additional plugins --
-------------------------------------

-- Colorizer
local colorizer_cfg = {} -- add you config here
require 'colorizer'.setup(colorizer_cfg)

require("typescript").setup({})

-- nvim-tree
function _G.nvimTreeCollapse()
  local lib = require 'nvim-tree.lib'
  lib.collapse_all()
end

require('nvim-tree').setup {
  view = {
    mappings = {
      list = {
        { key = 'ga', cb = ':call v:lua.nvimTreeCollapse() | normal gg<cr>' },
      },
    },
  },
}

-- -- lsp_signature
local lsp_signature_cfg = {} -- add you config here
require "lsp_signature".setup(lsp_signature_cfg)

-- -- todo-comments
require("todo-comments").setup {}


-- indent_blankline

-- Nvim Tree
-- lvim.builtin.nvimtree.filters.dotfiles = false
-- lvim.builtin.nvimtree.git.ignore = true
-- lvim.builtin.nvimtree.git.enable = true
