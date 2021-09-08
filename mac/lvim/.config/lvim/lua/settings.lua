--------------
-- Settings --
--------------

lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = true
lvim.colorscheme = "gruvbox"
lvim.leader = "space"
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

vim.cmd [[
  au BufWritePost *yabairc !brew services restart xorpse/formulae/yabai
  au BufWritePost *espanso/default.yml !espanso restart
  au BufWritePost *skhdrc !brew services restart skhd
  au BufNewFile,BufRead *.ts setlocal filetype=typescript
  au BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
  au BufNewFile,BufRead *.py setlocal filetype=python
  set wrap
  filetype plugin indent on
  syntax on
  set foldmethod=syntax
  set foldcolumn=1
  let javaScript_fold=1
  set foldlevelstart=99
]]
