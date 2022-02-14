-------------------------------------
-- Settings for additional plugins --
-------------------------------------

-- Colorizer
require'colorizer'.setup(
  {'*';},
  {
    RGB      = true;         -- #RGB hex codes
	  RRGGBB   = true;         -- #RRGGBB hex codes
	  names    = true;         -- "Name" codes like Blue
	  RRGGBBAA = true;         -- #RRGGBBAA hex codes
	  rgb_fn   = true;         -- CSS rgb() and rgba() functions
	  hsl_fn   = true;         -- CSS hsl() and hsla() functions
	  css      = true;         -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
	  css_fn   = true;         -- Enable all CSS *functions*: rgb_fn, hsl_fn
  })


-- nvim-tree
function _G.nvimTreeCollapse()
  local lib = require'nvim-tree.lib'
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

-- lsp_signature
local lsp_signature_cfg = {}  -- add you config here
require "lsp_signature".setup(lsp_signature_cfg)

-- todo-comments
require("todo-comments").setup {}


-- indent_blankline

-- Nvim Tree
-- lvim.builtin.nvimtree.filters.dotfiles = false
-- lvim.builtin.nvimtree.git.ignore = true
-- lvim.builtin.nvimtree.git.enable = true
