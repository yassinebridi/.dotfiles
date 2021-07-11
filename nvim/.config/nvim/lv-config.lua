-- general
O.format_on_save = true
O.auto_complete = true
O.colorscheme="nvcode"
O.auto_close_tree = 0
O.wrap_lines = false
O.timeoutlen = 100
O.leader_key = " "
O.ignore_case = true
O.smart_case = true

-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.colorizer.active = false
O.plugin.ts_playground.active = false
O.plugin.indent_line.active = false

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- javascript
O.lang.tsserver.linter = nil
