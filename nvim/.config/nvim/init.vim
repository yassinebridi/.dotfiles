if exists("g:started_by_firenvim")
	source $HOME/.config/nvim/settings.vim
	source $HOME/.config/nvim/keymaps.vim
	source $HOME/.config/nvim/macros.vim
	source $HOME/.config/nvim/plugins.vim
	source $HOME/.config/nvim/theme.vim
	source $HOME/.config/nvim/firenvim.vim
	source $HOME/.config/nvim/fzf.vim
	source $HOME/.config/nvim/visual-multi.vim
	" source $HOME/.config/nvim/coc.vim
	" source $HOME/.config/nvim/floaterm.vim
	" source $HOME/.config/nvim/fold.vim
	" source $HOME/.config/nvim/workspace.vim
	" source $HOME/.config/nvim/spelling.vim
else
	source $HOME/.config/nvim/settings.vim
	source $HOME/.config/nvim/keymaps.vim
	source $HOME/.config/nvim/macros.vim
	source $HOME/.config/nvim/plugins.vim
	source $HOME/.config/nvim/visual-multi.vim
	source $HOME/.config/nvim/coc.vim
	source $HOME/.config/nvim/fzf.vim
	source $HOME/.config/nvim/floaterm.vim
	source $HOME/.config/nvim/fold.vim
	source $HOME/.config/nvim/workspace.vim
	source $HOME/.config/nvim/spelling.vim
	source $HOME/.config/nvim/theme.vim
	" source $HOME/.config/nvim/firenvim.vim
endif
