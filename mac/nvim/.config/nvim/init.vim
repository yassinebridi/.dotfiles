if exists('g:vscode')
    " VSCode extension
  let mapleader = ' '
  set clipboard+=unnamedplus
  " source $HOME/.config/nvim/settings.vim
  nnoremap <leader>w :Write<cr>
  nnoremap <leader>c :Quit<cr>
  nnoremap <leader>la <Cmd>call VSCodeNotify('keyboard-quickfix.openQuickFix')<CR>
  source $HOME/.config/nvim/macros.vim
  " source $HOME/.config/nvim/keymaps.vim
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

  " Has to be loaded after coc.nvim, so that coc formating doesn't take over
  set tabstop=4 softtabstop=0 expandtab shiftwidth=2 smarttab
endif
