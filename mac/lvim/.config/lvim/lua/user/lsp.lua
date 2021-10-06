---------
-- LSP --
---------
-- Better TS/JS Dev experience
-- lvim.lang.typescript.lsp.setup.on_attach = function(client, bufnr)
--   -- disable tsserver formatting if you plan on formatting via null-ls
--   client.resolved_capabilities.document_formatting = false
--   client.resolved_capabilities.document_range_formatting = false

--   local ts_utils = require("nvim-lsp-ts-utils")

--   -- defaults
--   ts_utils.setup {
--     debug = false,
--     disable_commands = false,
--     enable_import_on_completion = false,

--     -- import all
--     import_all_timeout = 5000, -- ms
--     import_all_priorities = {
--         buffers = 4, -- loaded buffer names
--         buffer_content = 3, -- loaded buffer content
--         local_files = 2, -- git files or files with relative path markers
--         same_file = 1, -- add to existing import statement
--     },
--     import_all_scan_buffers = 100,
--     import_all_select_source = true,

--     -- eslint
--     eslint_enable_code_actions = false,
--     eslint_enable_disable_comments = true,
--     eslint_bin = "eslint",
--     eslint_enable_diagnostics = true,
--     eslint_opts = {},

--     -- formatting
--     enable_formatting = true,
--     formatter = "prettier",
--     formatter_opts = {},

--     -- update imports on file move
--     update_imports_on_move = true,
--     require_confirmation_on_move = true,
--     watch_dir = nil,

--     -- filter diagnostics
--     filter_out_diagnostics_by_severity = {},
--     filter_out_diagnostics_by_code = {},
--   }

--   -- required to fix code action ranges and filter diagnostics
--   ts_utils.setup_client(client)

--   -- no default maps, so you may want to define some here
--   local opts = { silent = true }
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>o", ":TSLspOrganize<CR>", opts)
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>x", ":TSLspFixCurrent<CR>", opts)
--   vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>i", ":TSLspImportAll<CR>", opts)
-- end

lvim.lsp.diagnostics.virtual_text= false

lvim.lang.json.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.typescriptreact.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.typescriptreact.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.javascriptreact.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.javascriptreact.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.javascript.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
lvim.lang.javascript.linters = {
  {
    exe = "eslint",
    args = {}
  }
}
lvim.lang.typescript.formatters = {
  {
    exe = "prettier",
    args = {}
  }
}
-- set an additional linter
lvim.lang.typescript.linters = {
  {
    exe = "eslint",
    args = {}
  }
}


-- Solidity
require("nvim-treesitter.parsers").get_parser_configs().solidity = {
  install_info = {
    url = "https://github.com/JoranHonig/tree-sitter-solidity",
    files = { "src/parser.c" },
    requires_generate_from_grammar = true,
  },
  filetype = "solidity",
}
