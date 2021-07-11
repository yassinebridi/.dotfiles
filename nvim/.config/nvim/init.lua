require "default-config"
require "keymappings"
vim.cmd("luafile " .. CONFIG_PATH .. "/lv-config.lua")
require "settings"
require "plugins"
vim.g.colors_name = O.colorscheme
require "lv-utils"
require "lv-treesitter"
