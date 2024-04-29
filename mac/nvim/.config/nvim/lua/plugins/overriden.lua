-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

return { -- override nvim-cmp plugin
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.mapping["<Tab>"] = vim.NIL
      opts.mapping["<S-Tab>"] = vim.NIL
    end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      commands = {
        parent = function(state) state.commands.close_node(state) end,
      },
      window = {
        mappings = {
          ["h"] = "parent",
        },
      },
    },
  },
}
