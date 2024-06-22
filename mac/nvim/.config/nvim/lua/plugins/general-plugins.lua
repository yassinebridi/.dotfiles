-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return {
  { "mg979/vim-visual-multi" },
  { "dwrdx/mywords.nvim" },
  { "github/copilot.vim" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").on_attach() end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  },
  {
    "echasnovski/mini.move",
    version = "*",
    config = function()
      require("mini.move").setup {
        mappings = {
          -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = "<C-H>",
          right = "<C-L>",
          down = "<C-J>",
          up = "<C-K>",

          -- Move current line in Normal mode
          line_left = "<C-H>",
          line_right = "<C-L>",
          line_down = "<C-J>",
          line_up = "<C-K>",
        },
      }
    end,
  },
  -- {
  --   "Exafunction/codeium.vim",
  --   event = "User AstroFile",
  --   config = function()
  --     vim.cmd "CodeiumEnable"
  --     vim.keymap.set("i", "<TAB>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
  --     vim.keymap.set("i", "<c-;>", function() return vim.fn["codeium#CycleCompletions"](1) end, { expr = true })
  --     vim.keymap.set("i", "<c-,>", function() return vim.fn["codeium#CycleCompletions"](-1) end, { expr = true })
  --     vim.keymap.set("i", "<c-x>", function() return vim.fn["codeium#Clear"]() end, { expr = true })
  --     vim.keymap.set("n", "<Leader>;", function()
  --       if vim.g.codeium_enabled == true then
  --         vim.cmd "CodeiumDisable"
  --       else
  --         vim.cmd "CodeiumEnable"
  --       end
  --     end, { noremap = true, desc = "Toggle Codeium active" })
  --   end,
  -- },
}
