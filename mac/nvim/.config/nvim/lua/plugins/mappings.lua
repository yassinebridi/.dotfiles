-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>aa"] = { "<cmd>normal! ggVG<cr>", desc = "Select All" },
          ["<Leader>h"] = { "<cmd>lua require'mywords'.hl_toggle()<cr>", desc = "Hightlight Word" },
          ["<Leader>u"] = { "<cmd>lua require'mywords'.uhl_all()<cr><cmd>nohlsearch<cr>", desc = "Unhightlight All" },
          ["<Leader>k"] = { "<cmd>lua require'kubectl'.open()<cr>", desc = "Kubectl" },
          ["<Leader>rr"] = { "<cmd>Resurrect<cr>", desc = "Resurrect" },
          ["<Leader>dn"] = { "<cmd>lua require'notify'.dismiss()<cr>", desc = "Dismiss Notifications" },
          ["Y"] = { '"ky', desc = "Yank to k register" },
          ["P"] = { '"kp', desc = "Paste from k register" },
          ["gh"] = { "^", desc = "Go to start of line" },
          ["gl"] = { "$", desc = "Go to end of line" },
          ["<CR>"] = { "o<space><Esc>", desc = "New line with space" },
          ["yia"] = { "yi'", desc = "Yank inside single quotes" },
          ["cia"] = { "ci'", desc = "Change inside single quotes" },
          ["dia"] = { "di'", desc = "Delete inside single quotes" },
          ["via"] = { "vi'", desc = "Select inside single quotes" },
          ["yiq"] = { 'yi"', desc = "Yank inside double quotes" },
          ["ciq"] = { 'ci"', desc = "Change inside double quotes" },
          ["diq"] = { 'di"', desc = "Delete inside double quotes" },
          ["viq"] = { 'vi"', desc = "Select inside double quotes" },
          ["yi`"] = { "yi`", desc = "Yank inside backticks" },
          ["ci`"] = { "ci`", desc = "Change inside backticks" },
          ["di`"] = { "di`", desc = "Delete inside backticks" },
          ["vi`"] = { "vi`", desc = "Select inside backticks" },
          ["<Tab>"] = { ">>", desc = "Indent" },
          ["<S-Tab>"] = { "<<", desc = "Unindent" },
          ["<Leader>n"] = { "*", desc = "Search word under cursor forward" },
          ["<Leader>p"] = { "#", desc = "Search word under cursor backward" },
          ["<S-h>"] = { ":bp<CR>", desc = "Previous buffer" },
          ["<S-l>"] = { ":bn<CR>", desc = "Next buffer" },
          ["<leader><CR>"] = { "i<CR><Esc>", desc = "Insert newline" },
          ["<Leader>lt"] = { "yiwoconsole.log('pa: a', pa);", desc = "Insert console.log" }, -- macro
        },
        i = {
          ["<c-l>"] = { "<esc>diw[(opbi<ea>[(%Opbi</ea>", desc = "Insert JSX tags" }, -- macro
          ["<c-x>"] = { "<esc>yiwi<ea></pa>bba", desc = "Insert JSX tags" }, -- macro
        },
        v = {
          ["Y"] = { '"ky', desc = "Yank to k register" },
          ["P"] = { '"kp', desc = "Paste from k register" },
          ["gh"] = { "^", desc = "Go to start of line" },
          ["gl"] = { "$", desc = "Go to end of line" },
          ["(("] = { '"sc(<C-r>s)<Esc>', desc = "Surround with parentheses" },
          ["{{"] = { '"sc{<C-r>s}<Esc>', desc = "Surround with curly braces" },
          ["[["] = { '"sc[<C-r>s]<Esc>', desc = "Surround with square brackets" },
          ['""'] = { '"sc"<C-r>s"<Esc>', desc = "Surround with double quotes" },
          ["''"] = { "\"sc'<C-r>s'<Esc>", desc = "Surround with single quotes" },
          ["``"] = { '"sc`<C-r>s`<Esc>', desc = "Surround with backticks" },
          ["<Tab>"] = { ">>", desc = "Indent" },
          ["<S-Tab>"] = { "<<", desc = "Unindent" },
          ["<Leader>tr"] = { ">gvctry {\n}kpk%a catch(error){\nconsole.log(error)\n}", desc = "Try Catch" }, -- macro
        },
        c = {
          ["<c-q>"] = { "<c-f>i<c-o>q", desc = "Open command-line window" },
        },
      },
    },
  },
  {
    "AstroNvim/astrolsp",
    ---@type AstroLSPOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>o"] = {
            function()
              vim.lsp.buf.code_action {
                apply = true,
                context = { only = { "source.removeUnused.ts" }, diagnostics = {} },
              }
            end,
            desc = "Remove unused imports",
          },
          ["<Leader>lx"] = {
            function()
              vim.lsp.buf.code_action {
                apply = true,
                context = { only = { "source.addMissingImports.ts" }, diagnostics = {} },
              }
            end,
            desc = "Add missing imports",
          },
          m = {
            function() vim.diagnostic.goto_next() end,
            desc = "Next Diagnostic",
          },
          M = {
            function() vim.diagnostic.goto_prev() end,
            desc = "Next Diagnostic",
          },
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function() vim.lsp.buf.hover() end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function() vim.lsp.buf.declaration() end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
