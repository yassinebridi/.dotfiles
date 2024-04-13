-------------------
--- All Plugins ---
-------------------
local actions = require "fzf-lua.actions"
lvim.plugins = {
  { "ellisonleao/gruvbox.nvim",   priority = 1000, config = true },
  -- {
  --   "f-person/auto-dark-mode.nvim",
  --   config = {
  --     update_interval = 1000,
  --     set_dark_mode = function()
  --       vim.api.nvim_set_option("background", "dark")
  --       vim.cmd("colorscheme gruvbox")
  --     end,
  --     set_light_mode = function()
  --       vim.api.nvim_set_option("background", "light")
  --       vim.cmd("colorscheme gruvbox")
  --     end,
  --   },
  -- },
  -- { "lunarvim/colorschemes" },
  {
    "echasnovski/mini.surround",
    version = '*',
    config = function()
      require('mini.surround').setup()
    end
  },
  {
    "echasnovski/mini.move",
    version = '*',
    config = function()
      require('mini.move').setup({
        mappings = {
          -- Move visual selection in Visual mode. Defaults are Alt (Meta) + hjkl.
          left = '<C-H>',
          right = '<C-L>',
          down = '<C-J>',
          up = '<C-K>',

          -- Move current line in Normal mode
          line_left = '<C-H>',
          line_right = '<C-L>',
          line_down = '<C-J>',
          line_up = '<C-K>',
        },
      })
    end
  },
  { "jesseleite/nvim-macroni" },
  { "mg979/vim-visual-multi" },
  { "nvim-tree/nvim-web-devicons" },
  { "dwrdx/mywords.nvim" },
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { 'ibhagwan/fzf-lua' },
      { 'kkharji/sqlite.lua', module = 'sqlite' },
    },
    config = function()
      require('neoclip').setup({
        enable_persistent_history = true,
        db_path = vim.fn.expand(vim.fn.stdpath "config" .. "/databases/neoclip.sqlite3")
      })
    end
  },
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
  {
    "github/copilot.vim"
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    enabled = true,
    opts = { mode = "cursor", max_lines = 3 },
  },
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({
        grep = { rg_glove = false, actions = { ["ctrl-g"] = { actions.grep_lgrep } } },
      })
    end
  },
  { "junegunn/fzf", build = "./install --bin" },
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require "lsp_signature".on_attach() end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "JoosepAlviste/nvim-ts-context-commentstring",
    event = "BufRead",
  },
  {
    "stevearc/dressing.nvim",
    opts = {},
  },
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    -- optionally, override the default options:
    config = function()
      require("tailwindcss-colorizer-cmp").setup({
        color_square_width = 2,
      })
    end
  }
}

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
