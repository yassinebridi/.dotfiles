set runtimepath-=~/.config/nvim
set runtimepath-=~/.config/nvim/after
set runtimepath-=~/.local/share/nvim/site
set runtimepath-=~/.local/share/nvim/site/after

set runtimepath+=~/.config/nvim-nightly/after
set runtimepath^=~/.config/nvim-nightly
set runtimepath+=~/.local/share/nvim-nightly/site/after
set runtimepath^=~/.local/share/nvim-nightly/site

source $HOME/.config/nvim-nightly/settings.vim
source $HOME/.config/nvim-nightly/keymaps.vim
source $HOME/.config/nvim-nightly/macros.vim
source $HOME/.config/nvim-nightly/plugins.vim
source $HOME/.config/nvim-nightly/lsp.vim
source $HOME/.config/nvim-nightly/visual-multi.vim
source $HOME/.config/nvim-nightly/fzf.vim
source $HOME/.config/nvim-nightly/floaterm.vim
source $HOME/.config/nvim-nightly/fold.vim
source $HOME/.config/nvim-nightly/workspace.vim
source $HOME/.config/nvim-nightly/spelling.vim
source $HOME/.config/nvim-nightly/theme.vim
