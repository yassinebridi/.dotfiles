-------------
-- Keymaps --
-------------
-- Move betwen diagnostic
-- Telescope

lvim.keys.normal_mode["<leader>rg"] = ":lua require'telescope.builtin'.live_grep({ vimgrep_arguments = { 'rg', '--hidden','--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '-g', '!yarn.lock', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' } })<cr>"
lvim.keys.normal_mode["<leader>rf"] = ":lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' }})<cr>"
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

