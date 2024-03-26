-------------------
--- All Plugins ---
-------------------
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
  { "mg979/vim-visual-multi" },
  { "dwrdx/mywords.nvim" },
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
    "Exafunction/codeium.nvim",
    enabled = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_chat = true,
        tools = {
          language_server = "/usr/local/bin/language_server_macos_arm",
        },
      })
    end
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
      require("fzf-lua").setup({})
    end
  },
  { "junegunn/fzf", build = "./install --bin" },
  {
    "ThePrimeagen/refactoring.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("refactoring").setup()
    end,
  },
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
  },
  -- how is
  {
    "mfussenegger/nvim-dap",
    optional = true,
    dependencies = {
      {
        "williamboman/mason.nvim",
        opts = function(_, opts)
          opts.ensure_installed = opts.ensure_installed or {}
          table.insert(opts.ensure_installed, "js-debug-adapter")
        end,
      },
    },
    opts = function()
      local dap = require("dap")
      if not dap.adapters["pwa-node"] then
        require("dap").adapters["pwa-node"] = {
          type = "server",
          host = "localhost",
          port = "${port}",
          executable = {
            command = "node",
            -- 💀 Make sure to update this path to point to your installation
            args = {
              require("mason-registry").get_package("js-debug-adapter"):get_install_path()
              .. "/js-debug/src/dapDebugServer.js",
              "${port}",
            },
          },
        }
      end
      for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact" }) do
        if not dap.configurations[language] then
          dap.configurations[language] = {
            {
              type = "pwa-node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "pwa-node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end
    end,
  }
}

-- require("notify").setup({
--   background_colour = "#000000",
-- })
----------------------
--- Copilot Plugin ---
----------------------
table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  enabled = false,
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })                             -- https://github.com/zbirenbaum/copilot.lua/blob/master/README.md#setup-and-configuration
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

-- how 
require('refactoring').setup({
  sources = {
    { name = "codeium" }
  }
})
---------------------------------
--- Setup refactoring plugin  ---
---------------------------------
require('refactoring').setup()
-- load refactoring Telescope extension
require("telescope").load_extension("refactoring")

lvim.builtin.which_key.mappings["rr"] = { function() require('telescope').extensions.refactoring.refactors() end,
  "Refactor Selection" }
lvim.builtin.which_key.vmappings["rr"] = { function() require('telescope').extensions.refactoring.refactors() end,
  "Refactor Selection" }
lvim.builtin.which_key.mappings["rv"] = { function() require('refactoring').debug.print_var() end, "Debug Print Variable" }
lvim.builtin.which_key.mappings["rp"] = { function() require('refactoring').debug.printf() end, "Debug Print" }
lvim.builtin.which_key.mappings["rc"] = { function() require('refactoring').debug.cleanup({}) end, "Clean Debug" }
