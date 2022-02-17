---------
-- LSP --
---------

-- Typescript
vim.list_extend(lvim.lsp.override, { "tsserver tailwindcss" })

local tsserver_bin = "typescript-language-server"
local custom_on_attach = function(client, bufnr)
  require("lvim.lsp").common_on_attach(client, bufnr)

  client.resolved_capabilities.document_formatting = false
  client.resolved_capabilities.document_range_formatting = false

  local ts_utils = require("nvim-lsp-ts-utils")

  -- defaults
  ts_utils.setup {
    debug = false,
    disable_commands = false,
    enable_import_on_completion = true,

    -- import all
    import_all_timeout = 5000, -- ms
    import_all_priorities = {
        buffers = 4, -- loaded buffer names
        buffer_content = 3, -- loaded buffer content
        local_files = 2, -- git files or files with relative path markers
        same_file = 1, -- add to existing import statement
    },
    import_all_scan_buffers = 100,
    import_all_select_source = true,

    -- eslint
    eslint_enable_code_actions = true,
    eslint_enable_disable_comments = true,
    eslint_bin = "eslint",
    eslint_enable_diagnostics = true,
    eslint_opts = {},

    -- formatting
    enable_formatting = true,
    formatter = "prettier",
    formatter_opts = {},

    -- update imports on file move
    update_imports_on_move = true,
    require_confirmation_on_move = true,
    watch_dir = nil,

    -- filter diagnostics
    filter_out_diagnostics_by_severity = {},
    filter_out_diagnostics_by_code = {},
  }

  -- required to fix code action ranges and filter diagnostics
  ts_utils.setup_client(client)

  -- no default maps, so you may want to define some here
  local opts = { noremap = true, silent = true }
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>o", ":TSLspOrganize<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>x", ":TSLspImportCurrent<CR>", opts)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>i", ":TSLspImportAll<CR>", opts)
end
local tsserver_flags = {
  "--stdio",
}
local tsserver_opts = {
  cmd = { tsserver_bin, unpack(tsserver_flags) },
  on_attach = custom_on_attach,
}
require("lvim.lsp.manager").setup("tsserver", tsserver_opts)

-- Tailwindcss
local tailwind_bin = "tailwindcss-language-server"
local tailwind_flags = {
  "--stdio",
}
local tailwind_opts = {
  cmd = { tailwind_bin, unpack(tailwind_flags) },
}
require("lvim.lsp.manager").setup("tailwindcss", tailwind_opts)

lvim.lsp.automatic_servers_installation = true
lvim.lsp.diagnostics.virtual_text= false

-- Prettier configuration
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
      "graphql",
      "css",
      "html",
      "json",
      "markdown",
    },
  },
}

-- ESLint Configuration
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint_d",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
    },
  },
}
local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    exe = "eslint_d",
    filetypes = {
      "javascriptreact",
      "javascript",
      "typescriptreact",
      "typescript",
    },
  },
}

-- Solidity
-- require("nvim-treesitter.parsers").get_parser_configs().solidity = {
--   install_info = {
--     url = "https://github.com/JoranHonig/tree-sitter-solidity",
--     files = { "src/parser.c" },
--     requires_generate_from_grammar = true,
--   },
--   filetype = "solidity",
-- }
