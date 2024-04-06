------------------------
--- General Settings ---
------------------------
lvim.colorscheme = "gruvbox"
lvim.transparent_window = true
lvim.builtin.alpha.active = false
lvim.builtin.lualine.style = "default" -- or "none"
lvim.builtin.cmp.mapping["<Tab>"] = vim.NIL
lvim.builtin.cmp.mapping["<S-Tab>"] = vim.NIL

lvim.lsp.buffer_mappings.normal_mode["gl"] = nil
-- use treesitter folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevelstart = 99
vim.opt.whichwrap = "b,s"
vim.opt.wrap = true
vim.opt.linebreak = true
-- vim.opt.cmdheight = 2
lvim.lsp.installer.setup.automatic_installation = true


vim.cmd [[
  au BufWritePost *yabairc !brew services restart koekeishiya/formulae/yabai
  au BufWritePost *skhdrc !brew services restart skhd
]]

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}
