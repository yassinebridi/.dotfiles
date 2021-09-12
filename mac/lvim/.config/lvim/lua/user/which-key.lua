---------------
-- Which Key --
---------------

-- Quiting
lvim.builtin.which_key.mappings = {
  ["q"] = {":q<CR>", "Quit"},
  ["w"] = {":w<CR>", "Save"}
}
-- Better Searching
lvim.builtin.which_key.mappings["f"] = { "<cmd>:lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' }})<CR>", "Find Files" }

-- Better Live Grep
lvim.builtin.which_key.mappings["rg"] = { ":lua require'telescope.builtin'.live_grep({ vimgrep_arguments = { 'rg', '--hidden','--color=never', '--no-heading', '--with-filename', '--line-number', '--column', '--smart-case', '-u', '-g', '!yarn.lock', '-g', '!.git', '-g', '!node_modules', '-g', '!.next' } })<cr>", "Find Text" }

