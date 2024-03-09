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
lvim.builtin.which_key.mappings["f"] = { "<cmd>Telescope find_files<cr>", "Find File" }
lvim.builtin.which_key.mappings["rg"] = { "<cmd>Telescope live_grep<cr>", "Grep" }
lvim.builtin.which_key.mappings["aa"] = { "<cmd>normal! ggVG<cr>", "Select All" }
