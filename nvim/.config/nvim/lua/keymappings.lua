-- better window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { silent = true })

-- Terminal window navigation
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-h>", "<C-\\><C-N><C-w>h", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<C-\\><C-N><C-w>j", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-k>", "<C-\\><C-N><C-w>k", { silent = true, noremap = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<C-\\><C-N><C-w>l", { silent = true, noremap = true })
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", { silent = true, noremap = true })

-- TODO fix this
-- resize with arrows
if vim.fn.has "mac" == 1 then
  vim.api.nvim_set_keymap("n", "<A-Up>", ":resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Down>", ":resize +2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Left>", ":vertical resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<A-Right>", ":vertical resize +2<CR>", { silent = true })
else
  vim.api.nvim_set_keymap("n", "<C-Up>", ":resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Down>", ":resize +2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })
end

-- better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent = true })

-- I hate escape
vim.api.nvim_set_keymap("i", "jk", "<ESC>", { noremap = true, silent = true })

-- Tab switch buffer
vim.api.nvim_set_keymap("n", "<A-l>", ":bnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-h>", ":bprevious<CR>", { noremap = true, silent = true })

-- Move selected line / block of text in visual mode
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = true })

-- Move current line / block with Alt-j/k ala vscode.
vim.api.nvim_set_keymap("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-j>", ":m '>+1<CR>gv-gv", { noremap = true, silent = true })
vim.api.nvim_set_keymap("x", "<A-k>", ":m '<-2<CR>gv-gv", { noremap = true, silent = true })

-- QuickFix
vim.api.nvim_set_keymap("n", "]q", ":cnext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "[q", ":cprev<CR>", { noremap = true, silent = true })

-- Better nav for omnicomplete
vim.cmd 'inoremap <expr> <c-j> ("\\<C-n>")'
vim.cmd 'inoremap <expr> <c-k> ("\\<C-p>")'

vim.cmd 'vnoremap p "0p'
vim.cmd 'vnoremap P "0P'

-- Toggle the QuickFix window
vim.api.nvim_set_keymap("", "<C-q>", ":call QuickFixToggle()<CR>", { noremap = true, silent = true })


-- Copy
vim.api.nvim_set_keymap("v", "Y", '"ky', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "P", '"kp', { noremap = true, silent = true })

-- " Folding
vim.api.nvim_set_keymap("n", "fo", "zo", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "fc", "zc", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "fO", "zR", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "fC", "zM", { noremap = true, silent = true })

-- " Moving around
vim.api.nvim_set_keymap("n", "gh", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "gl", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "gh", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "k", "gk", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "j", "gj", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-k>", "{", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<A-j>", "}", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-k>", "{", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<A-j>", "}", { noremap = true, silent = true })

-- " Remove
vim.api.nvim_set_keymap("n", "yia", "yi'", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "cia", "ci'", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dia", "di'", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "via", "vi'", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "yiq", 'yi"', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ciq", 'ci"', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "diq", 'di"', { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "viq", 'vi"', { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "yi`", "yi`", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "ci`", "ci`", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "di`", "di`", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "vi`", "vi`", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "yii", "yi{", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "cii", "ci{", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "dii", "di{", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "vii", "vi{", { noremap = true, silent = true })

-- " Select all
vim.api.nvim_set_keymap("n", "<leader>aa", "ggVG", { noremap = true, silent = true })

-- Tab like movement in autocompletion
vim.api.nvim_set_keymap("i", "<A-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<A-k>", "<UP>", { noremap = true, silent = true })

--Enter functionality
vim.api.nvim_set_keymap("n", "<leader><CR>", "i<CR><Esc>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<CR>", "o<Esc>", { noremap = true, silent = true })

--Source current file
-- nnoremap <leader>y :w<cr> :so ~/.config/nvim/init.vim<cr>

-- Surround
vim.api.nvim_set_keymap("v", "((", '"sc(<C-r>s)<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "{{", '"sc{<C-r>s}<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "[[", '"sc[<C-r>s]<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", '""', '"sc"<C-r>s"<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "''", '"sc\'<C-r>s\'<Esc>', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "``", '"sc`<C-r>s`<Esc>', { noremap = true, silent = true })

-- Command-line like forward-g
vim.api.nvim_set_keymap("c", "<A-k>", "Up", { noremap = true, silent = true })
-- Command-line like reverse-g
vim.api.nvim_set_keymap("c", "<A-j>", "Down", { noremap = true, silent = true })

-- " Remap splits navigation to just CTRL + hjkl
vim.api.nvim_set_keymap("n", "<C-H>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-K>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-J>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-L>", "<C-w>l", { noremap = true, silent = true })

-- " Make adjusing split sizes a bit more friendly
vim.api.nvim_set_keymap("n", "L", ":vertical resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "J", ":resize +3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "K", ":resize -3<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "H", ":vertical resize -3<CR>", { noremap = true, silent = true })

-- " Split shortcuts
vim.api.nvim_set_keymap("n", "<Tab>", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-tab>", "<<", { noremap = true, silent = true })

-- " Split shortcuts
vim.api.nvim_set_keymap("n", "<Leader>v", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":vsplit<CR>", { noremap = true, silent = true })

-- " Map alt + {h,l} to move the cursor left and right
vim.api.nvim_set_keymap("i", "<M-h>", "<left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-l>", "<right>", { noremap = true, silent = true })

-- " End macros in command mode
vim.api.nvim_set_keymap("c", "<C-q>", "<c-f>i<c-o>q", { noremap = true, silent = true })

-- " Map alt + space to remove characters
vim.api.nvim_set_keymap("c", "<A-space>", "<backspace>", { noremap = true, silent = true })

-- " map .
vim.api.nvim_set_keymap("c", "<M-p>", ".", { noremap = true, silent = true })

-- " Open current file in lf
vim.api.nvim_set_keymap("n", "<leader>lf", ":! ~/bin/openLf %<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>cm", ":! ~/bin/openCm %<CR>", { noremap = true, silent = true })

-- " Open git history of current file
vim.api.nvim_set_keymap("n", "<leader>gp", ":! ~/bin/openGitDiffer %<CR>", { noremap = true, silent = true })

-- " Delete in insert mode
vim.api.nvim_set_keymap("i", "<M-i>", "<Bs>", { noremap = true, silent = true })
