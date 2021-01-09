ZSH_THEME="robbyrussell"
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions colored-man-pages)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/scripts/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH=~/.config/npm-global/bin:$PATH
export ZSH="/home/yaslix/.config/oh-my-zsh"

# Deno
export DENO_INSTALL="/home/yaslix/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

source $ZSH/oh-my-zsh.sh

export TERM=screen-256color

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M viins 'jk' vi-cmd-mode
bindkey -v '^?' backward-delete-char

# Aliases
alias yw='yarn workspace'
alias yc='yarn commit'
alias yd='yarn deploy'
alias ydc='yarn clean && yarn dev'
alias ydv='yarn dev'
alias ytp='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias yts='youtube-dl --write-sub --sub-lang en --skip-download'
alias lf='lfrun'
alias sc='sc-im'

alias server='python -m SimpleHTTPServer 8080'
alias szsh='source ~/.config/zsh/.zshrc'

alias vim='nvim'
alias v='nvim'
alias ezsh='nvim ~/.config/zsh/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'
alias svim='sudo -E nvim'
alias dvim='nvim -d'
alias pb='nvim ~/.config/polybar/config'
alias sx='nvim ~/.config/sxhkd/sxhkdrc'
alias bsp='nvim ~/.config/bspwm/bspwmrc'
alias alc='vim ~/.config/alacritty/alacritty.yml'
alias tconf='vim ~/.tmux.conf'

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
alias nb='newsboat'
alias lg='lazygit'
alias f='ffmpeg'

alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias la='exa -la --group-directories-first'
alias ls='exa -l --group-directories-first'

alias lv='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'
alias lnd='export PATH="$PATH:`yarn global bin`"'
alias ltp='grep -i installed /var/log/pacman.log'

xrdb ~/.Xresources

# setxkbmap -layout us,ar,fr
setxkbmap -layout us,ar
setxkbmap -option 'grp:rctrl_rshift_toggle'

alacrittyOpenWidget() /home/yaslix/bin/alacrittyOpen alac
lfOpenWidget() /home/yaslix/bin/alacrittyOpen lf
pcmanOpenWidget() /home/yaslix/bin/alacrittyOpen pcman
zle -N alacrittyOpenWidget
zle -N lfOpenWidget
zle -N pcmanOpenWidget
bindkey '^[t' alacrittyOpenWidget
bindkey '^[r' lfOpenWidget
bindkey '^[p' pcmanOpenWidget

# zoxide(autojump replacement)
eval "$(zoxide init zsh)"

test -r ~/.config/dircolors && eval $(dircolors ~/.config/dircolors)
