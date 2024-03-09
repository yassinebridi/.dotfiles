------------------------
--- General Settings ---
------------------------
lvim.colorscheme = "gruvbox"
lvim.transparent_window = true
lvim.builtin.alpha.active = false

lvim.lsp.buffer_mappings.normal_mode["gl"] = nil
-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99
vim.opt.whichwrap = "b,s"
lvim.lsp.installer.setup.automatic_installation = true
lvim.builtin.which_key.mappings["f"] = { "<cmd>FzfLua files<cr>", "Find File" }
lvim.builtin.which_key.mappings["rg"] = { "<cmd>FzfLua grep_visual<cr>", "Grep" }
lvim.builtin.which_key.mappings["aa"] = { "<cmd>normal! ggVG<cr>", "Select All" }

vim.cmd [[
  au BufWritePost *yabairc !brew services restart koekeishiya/formulae/yabai
  au BufWritePost *skhdrc !brew services restart skhd
]]
