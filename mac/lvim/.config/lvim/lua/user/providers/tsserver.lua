local status_ok, ts_utils = pcall(require, "nvim-lsp-ts-utils")
if not status_ok then
  vim.cmd [[ packadd jose-elias-alvarez/nvim-lsp-ts-utils ]]
  ts_utils = require "nvim-lsp-ts-utils"
end

-- defaults
ts_utils.setup {
  debug = false,
  disable_commands = false,
  enable_import_on_completion = false,

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
  eslint_enable_code_actions = false,
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
local opts = {
  on_attach = function(client, bufnr)
    ts_utils.setup_client(client)

    local opts = { silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>o", ":TSLspOrganize<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>x", ":TSLspFixCurrent<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>i", ":TSLspImportAll<CR>", opts)
    require("lvim.lsp").common_on_attach(client, bufnr)
  end,
}

return opts
