--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.transparent_window = true
lvim.colorscheme = "gruvbox"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  -- for input mode
  lvim.builtin.telescope.defaults.mappings.i["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<M-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<M-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<M-p>"] = actions.cycle_history_prev
  -- for normal mode
  lvim.builtin.telescope.defaults.mappings.n["<M-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.n["<M-k>"] = actions.move_selection_previous
end

-- lvim.builtin.which_key.setup.plugins.presets = {
--   g = false,
-- }
-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
lvim.lsp.diagnostics.virtual_text= false
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
lvim.lang.typescriptreact.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.typescriptreact.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.javascriptreact.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.javascriptreact.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.javascript.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.javascript.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.typescript.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
-- set an additional linter
lvim.lang.typescript.linters = {
  {
    exe = "eslint",
    args = {}
  }
}

lvim.lang.tailwindcss.lsp.active=true

-- Additional Plugins
lvim.plugins = {
    {"Pocco81/Catppuccino.nvim"},
    {"rmagatti/auto-session"},
    {"ellisonleao/gruvbox.nvim", requires = {"rktjmp/lush.nvim"}}
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }

-------------
-- Keymaps --
-------------
-- Move betwen diagnostic
lvim.keys.normal_mode["m"] = ":lua vim.lsp.diagnostic.goto_next()<CR>"
lvim.keys.normal_mode["M"] = ":lua vim.lsp.diagnostic.goto_prev()<CR>"

-- Select all
lvim.keys.normal_mode["<leader>aa"] = "ggVG"

-- Copy
lvim.keys.visual_mode["Y"] = '"ky'
lvim.keys.visual_mode["P"] = '"kp'

-- Moving around
lvim.keys.normal_mode["gl"] = "$"
lvim.keys.normal_mode["gh"] = "^"
lvim.keys.visual_mode["gl"] = "$"
lvim.keys.visual_mode["gh"] = "^"
lvim.keys.normal_mode["k"] = "gk"
lvim.keys.normal_mode["j"] = "gj"
lvim.keys.normal_mode["<C-k>"] = "{"
lvim.keys.normal_mode["<C-j>"] = "}"
lvim.keys.visual_mode["<C-k>"] = "{"
lvim.keys.visual_mode["<C-j>"] = "}"

-- Wording
lvim.keys.normal_mode["yia"] = "yi'"
lvim.keys.normal_mode["cia"] = "ci'"
lvim.keys.normal_mode["dia"] = "di'"
lvim.keys.normal_mode["via"] = "vi'"

lvim.keys.normal_mode["yiq"] = 'yi"'
lvim.keys.normal_mode["ciq"] = 'ci"'
lvim.keys.normal_mode["diq"] = 'di"'
lvim.keys.normal_mode["viq"] = 'vi"'

lvim.keys.normal_mode["yi`"] = 'yi`'
lvim.keys.normal_mode["ci`"] = 'ci`'
lvim.keys.normal_mode["di`"] = 'di`'
lvim.keys.normal_mode["vi`"] = 'vi`'

lvim.keys.normal_mode["yie"] = 'yi{'
lvim.keys.normal_mode["cie"] = 'ci{'
lvim.keys.normal_mode["die"] = 'di{'
lvim.keys.normal_mode["vie"] = 'vi{'

lvim.keys.normal_mode["yil"] = '$v0y'
lvim.keys.normal_mode["dil"] = '$v0d'
lvim.keys.normal_mode["cil"] = '$v0c'
lvim.keys.normal_mode["vil"] = '$v0'

-- Enter functionality
lvim.keys.normal_mode["<leader><CR>"] = 'i<CR><Esc>'
lvim.keys.normal_mode["<CR>"] = 'o<Esc>'

-- Get out of insert mode
lvim.keys.command_mode["jk"] = '<C-C>'

-- TODO: Source current file
lvim.keys.normal_mode["<leader>y"] = ':w<cr> :luafile ~/.config/lvim/config.lua<cr>'

-- Surround
lvim.keys.visual_mode["(("] = '"sc(<C-r>s)<Esc>'
lvim.keys.visual_mode["{{"] = '"sc{<C-r>s}<Esc>'
lvim.keys.visual_mode["[["] = '"sc[<C-r>s]<Esc>'
lvim.keys.visual_mode['""'] = '"sc"<C-r>s"<Esc>'
lvim.keys.visual_mode["''"] = '"sc\'<C-r>s\'<Esc>'
lvim.keys.visual_mode["``"] = '"sc`<C-r>s`<Esc>'

-- Indent shortcuts
lvim.keys.normal_mode["<Tab>"] = '>>_'
lvim.keys.normal_mode["<S-Tab>"] = '<<_'
lvim.keys.visual_mode["<Tab>"] = '>gv'
lvim.keys.visual_mode["<S-Tab>"] = '<gv'

-- End macros in command mode
lvim.keys.command_mode["<C-q>"] = '<C-f>i<C-o>q'

------------
-- Macros --
------------

-- Typescript
-- Surround with trycatch
-- lvim.keys.visual_mode["<leader>tr"] = '>gvctry {}kpk%a catch(error){console.log(error)}'

-- -- JSX Tag completion
-- lvim.keys.insert_mode["<M-tab>"] = '<esc>"ayiwi<ea></"apa>bba'

-- -- JSX Tag completion without closing tag
-- lvim.keys.insert_mode["<S-tab>"] = '<esc>bi<ea />'

-- -- Enclose a bunch of tags with a dib Tag
-- lvim.keys.visual_mode["<leader>tg"] = 'dOdiv<esc><esc>"ayiwi<ea></"apa>bbaPka'

-- -- Console.log macos
-- lvim.keys.normal_mode["<leader>lt"] = "yiwoconsole.log('pa: a', pa);"

--------------
-- Settings --
--------------

vim.cmd [[
  au BufWritePost *yabairc !brew services restart xorpse/formulae/yabai
  au BufWritePost *skhdrc !brew services restart skhd
  au BufNewFile,BufRead *.ts setlocal filetype=typescript
  au BufNewFile,BufRead *.tsx setlocal filetype=typescriptreact
  au BufNewFile,BufRead *.py setlocal filetype=python
  filetype plugin indent on
  syntax on
  set foldmethod=syntax
  set foldcolumn=1
  let javaScript_fold=1
  set foldlevelstart=99
]]
