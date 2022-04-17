lvim.plugins = {
  {"jose-elias-alvarez/nvim-lsp-ts-utils", requires = { "jose-elias-alvarez/null-ls.nvim" }},
  {"windwp/nvim-ts-autotag"},
  {"terryma/vim-multiple-cursors"},
  {"norcalli/nvim-colorizer.lua"},
  {"ellisonleao/gruvbox.nvim"},
  {"rmagatti/auto-session"},
  {"ray-x/lsp_signature.nvim"},
  {"folke/todo-comments.nvim", requires = {"nvim-lua/plenary.nvim"}},
  {'junegunn/fzf', dir = '~/.fzf', run = './install --all' },
  {"junegunn/fzf.vim"},
  {
		"gelfand/copilot.vim",
		disable = not lvim.builtin.sell_soul_to_devel,
		config = function ()
			-- copilot assume mapped
			vim.g.copilot_assume_mapped = true
			vim.g.copilot_no_tab_map = true
		end
	},
	{
		"hrsh7th/cmp-copilot",
		disable = not lvim.builtin.sell_soul_to_devel,
		config = function ()
			lvim.builtin.cmp.formatting.source_names["copilot"] = "(Cop)"
			table.insert(lvim.builtin.cmp.sources, {name = "copilot"})
		end
	},
}
-- use '/opt/homebrew/bin/fzf'
