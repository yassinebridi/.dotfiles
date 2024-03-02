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
