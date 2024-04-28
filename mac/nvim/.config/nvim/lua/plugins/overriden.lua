return { -- override nvim-cmp plugin
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.mapping["<Tab>"] = vim.NIL
      opts.mapping["<S-Tab>"] = vim.NIL
    end,
  },
}
