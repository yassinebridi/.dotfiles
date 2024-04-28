-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  vim.cmd [[
    vnoremap Y "ky
    vnoremap P "kp

    nnoremap gh ^
    nnoremap gl $
    vnoremap gh ^
    vnoremap gl $
    nnoremap k gk
    nnoremap j gj

    nmap <CR> o<space><Esc>

    vnoremap (( "sc(<C-r>s)<Esc>
    vnoremap {{ "sc{<C-r>s}<Esc>
    vnoremap [[ "sc[<C-r>s]<Esc>
    vnoremap "" "sc"<C-r>s"<Esc>
    vnoremap '' "sc'<C-r>s'<Esc>
    vnoremap `` "sc`<C-r>s`<Esc>

    nnoremap yia yi'
    nnoremap cia ci'
    nnoremap dia di'
    nnoremap via vi'

    nnoremap yiq yi"
    nnoremap ciq ci"
    nnoremap diq di"
    nnoremap viq vi"

    nnoremap yi` yi`
    nnoremap ci` ci`
    nnoremap di` di`
    nnoremap vi` vi`

    noremap <Tab> >>
    noremap <S-tab> <<

    map <Leader>n *
    map <Leader>p #

    autocmd VimEnter * map <S-h> :bp<CR>
    autocmd VimEnter * map <S-l> :bn<CR>

    cnoremap <c-q> <c-f>i<c-o>q

    nnoremap <leader>aa <cmd>normal! ggVG<cr>
  ]],
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>aa"] = { "<cmd>normal! ggVG<cr>", desc = "Select All" },
          ["gl"] = false,
          ["<Leader>h"] = { "<cmd>lua require'mywords'.hl_toggle()<cr>", desc = "Hightlight Word" },
          ["<Leader>u"] = { "<cmd>lua require'mywords'.uhl_all()<cr><cmd>nohlsearch<cr>", desc = "Unhightlight All" },
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
              vim.lsp.buf.code_action({ apply = true, context = { only = { "source.removeUnused.ts" }, diagnostics = {} } })
            end,
            desc = "Remove unused imports",
          },
          ["<Leader>lx"] = {
            function()
              vim.lsp.buf.code_action({ apply = true, context = { only = { "source.addMissingImports.ts" }, diagnostics = {} } })
            end,
            desc = "Add missing imports",
          },
          m = {
            function()
              vim.diagnostic.goto_next()
            end,
            desc = "Next Diagnostic",
          },
          M = {
            function()
              vim.diagnostic.goto_prev()
            end,
            desc = "Next Diagnostic",
          },
          -- this mapping will only be set in buffers with an LSP attached
          K = {
            function()
              vim.lsp.buf.hover()
            end,
            desc = "Hover symbol details",
          },
          -- condition for only server with declaration capabilities
          gD = {
            function()
              vim.lsp.buf.declaration()
            end,
            desc = "Declaration of current symbol",
            cond = "textDocument/declaration",
          },
        },
      },
    },
  },
}
