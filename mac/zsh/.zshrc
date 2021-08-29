ZSH_THEME="robbyrussell"
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/scripts/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH=~/.config/npm-global/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

export ZSH="/Users/yassinebridi/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

export TERM=screen-256color

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M viins 'jk' vi-cmd-mode
bindkey -M vicmd 'gl' vi-end-of-line
bindkey -M vicmd 'gh' vi-digit-or-beginning-of-line
bindkey -v '^?' backward-delete-char

# Aliases
alias y='yarn'
alias yw='yarn workspace'
alias yd='yarn dev'
alias ys='yarn start'
alias ytp='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias yts='youtube-dl --write-sub --sub-lang en --skip-download'
alias a='z' # Zoxide to have the same alias, across zsh and lf

alias server='python -m SimpleHTTPServer 8080'
alias szsh='source ~/.config/zsh/.zshrc'

alias v='nvim'
alias svim='sudo -E nvim'
alias dvim='nvim -d'

alias stn='stow --adopt -nv'
alias stv='stow --adopt -v'
alias std='stow --adopt -vD'

alias t='runTmux'
alias ta='tmux a'
alias tn='tmux new -s'
alias tk='tmux kill-ses -t'
alias tl='tmux ls'
alias gp='git push'
alias code='code .'
alias cat='bat'
alias lg='lazygit'
alias ld='lazydocker'

alias la='exa -la --group-directories-first'
alias ls='exa -l --group-directories-first'

# zoxide(autojump replacement)
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion