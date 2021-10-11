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

-- Language Specific
-- =========================================
-- require("user/null_ls").config()
-- lvim.lsp.override = { "tsserver" }
-- for _, server_name in pairs(lvim.lsp.override) do
--   local lsp_installer_servers = require "nvim-lsp-installer.servers"
--   local server_available, requested_server = lsp_installer_servers.get_server(server_name)
--   if server_available then
--     if not requested_server:is_installed() then
--       if lvim.lsp.automatic_servers_installation then
--         requested_server:install()
--       else
--         return
--       end
--     end
--   end

--   local default_config = {
--     on_attach = require("lvim.lsp").common_on_attach,
--     on_init = require("lvim.lsp").common_on_init,
--     capabilities = require("lvim.lsp").common_capabilities(),
--   }

--   local status_ok, custom_config = pcall(require, "user/providers/" .. requested_server.name)
--   if status_ok then
--     local new_config = vim.tbl_deep_extend("force", default_config, custom_config)
--     requested_server:setup(new_config)
--   else
--     requested_server:setup(default_config)
--   end
-- end
