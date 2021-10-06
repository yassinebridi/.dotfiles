---------------
-- Which Key --
---------------

-- Quit
lvim.builtin.which_key.mappings["q"] = { "<cmd>:q<CR>", "Quit" }

-- Better finding files
lvim.builtin.which_key.mappings["f"] = { "<cmd>:lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' }})<CR>", "Find Files" }

-- Better finding text
lvim.builtin.which_key.mappings["rg"] = { "<cmd>:lua require'telescope.builtin'.live_grep({ vimgrep_arguments = { 'rg', '--hidden','--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '-g', '!yarn.lock', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' } })<CR>", "Find Text" }


-- Cargo run current project
lvim.builtin.which_key.mappings["tr"] = { "<cmd>:2TermExec cmd=\"cargo run\"<CR>", "Cargo Run" }

lvim.builtin.which_key.mappings["k"] = { "<cmd>:Telescope neoclip a<CR>", "Clipboard" }

lvim.lsp.buffer_mappings.normal_mode = {}
