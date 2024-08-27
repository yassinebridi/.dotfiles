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
    "supercrabtree/vim-resurrect",
  },
  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --     "nvim-telescope/telescope.nvim",
  --     {
  --       "stevearc/dressing.nvim",
  --       opts = {},
  --     },
  --   },
  --   config = function()
  --     require("codecompanion").setup {
  --       strategies = {
  --         chat = {
  --           adapter = "anthropic",
  --         },
  --         inline = {
  --           adapter = "anthropic",
  --         },
  --         agent = {
  --           adapter = "anthropic",
  --         },
  --       },
  --     }
  --   end,
  -- },
  {
    "yetone/avante.nvim",
    event = "VeryLazy",
    build = "make", -- This is Optional, only if you want to use tiktoken_core to calculate tokens count
    opts = {
      -- add any opts here
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      --- The below is optional, make sure to setup it properly if you have lazy=true
      {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {
          file_types = { "markdown", "Avante" },
        },
        ft = { "markdown", "Avante" },
      },
    },
  },
}
