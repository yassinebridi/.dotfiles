-------------------
--- All Plugins ---
-------------------
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  { "mg979/vim-visual-multi" },
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
}

----------------------
--- Copilot Plugin ---
----------------------
table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup()     -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
      require("copilot_cmp").setup() -- https://github.com/zbirenbaum/copilot-cmp/blob/master/README.md#configuration
    end, 100)
  end,
})

--------------------------
--- Session Management ---
--------------------------
local persistenceGroup = vim.api.nvim_create_augroup("Persistence", { clear = true })
local home = vim.fn.expand "~"
local disabled_dirs = {
  home,
  home .. "/Downloads",
  "/private/tmp",
}

-- disable persistence for certain directories
vim.api.nvim_create_autocmd({ "VimEnter" }, {
  group = persistenceGroup,
  callback = function()
    local cwd = vim.fn.getcwd()
    for _, path in pairs(disabled_dirs) do
      if path == cwd then
        require("persistence").stop()
        return
      end
    end
    if vim.fn.argc() == 0 and not vim.g.started_with_stdin then
      require("persistence").load()
    else
      require("persistence").stop()
    end
  end,
  nested = true,
})
