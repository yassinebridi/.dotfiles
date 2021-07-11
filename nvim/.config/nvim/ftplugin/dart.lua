if require("lv-utils").check_lsp_client_active "dartls" then
  return
end

require("lspconfig").dartls.setup {
  cmd = { "dart", O.lang.dart.sdk_path, "--lsp" },
  on_attach = require("lsp").common_on_attach,
  init_options = {
    closingLabels = false,
    flutterOutline = false,
    onlyAnalyzeProjectsWithOpenFiles = false,
    outline = false,
    suggestFromUnimportedLibraries = true,
  },
}
