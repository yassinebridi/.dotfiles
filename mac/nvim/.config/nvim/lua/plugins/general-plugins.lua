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
    "brenoprata10/nvim-highlight-colors",
    config = function() require("nvim-highlight-colors").setup {} end,
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
  {
    "ramilito/kubectl.nvim",
    config = function() require("kubectl").setup() end,
  },
  {
    "supercrabtree/vim-resurrect",
  },
  -- {
  --   "OXY2DEV/markview.nvim",
  --   lazy = false,
  --   config = function()
  --     require("markview").setup {
  --       modes = { "n", "no", "c" },
  --       hybrid_modes = { "n" },
  --       callbacks = {
  --         on_enable = function(_, win)
  --           vim.wo[win].conceallevel = 2
  --           vim.wo[win].conecalcursor = "c"
  --         end,
  --       },
  --     }
  --   end,
  --   dependencies = {
  --     -- You will not need this if you installed the
  --     -- parsers manually
  --     -- Or if the parsers are in your $RUNTIMEPATH
  --     "nvim-treesitter/nvim-treesitter",
  --
  --     "nvim-tree/nvim-web-devicons",
  --   },
  -- },
}
