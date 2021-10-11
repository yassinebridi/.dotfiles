local M = {}

M.config = function()
  local status_ok, nls = pcall(require, "null-ls")
  if not status_ok then
    return
  end

  -- you can either config null-ls itself
  nls.config {
    debounce = 150,
    save_after_format = false,
    sources = {
      nls.builtins.formatting.prettierd,
      nls.builtins.diagnostics.eslint_d,
    },
  }

  -- or use the lunarvim syntax
  lvim.lang.python.formatters = {
    {
      exe = "black",
      args = { "--fast" },
    },
    {
      exe = "isort",
      args = {
        "--profile",
        "black",
      },
    },
  }
  lvim.lang.markdown.linters = {
    {
      exe = "markdownlint",
    },
    {
      exe = "vale",
    },
  }
end

return M
