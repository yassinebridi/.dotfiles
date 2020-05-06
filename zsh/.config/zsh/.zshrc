ZSH_THEME="robbyrussell"
plugins=(nvm zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/scripts/bin"
export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.cargo/bin:$PATH"

export ZSH="/home/yaslix/.config/oh-my-zsh"
source $ZSH/oh-my-zsh.sh

autoload -U compinit && compinit

# For the autojump to work.
source /usr/share/autojump/autojump.zsh

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -M viins 'jk' vi-cmd-mode
bindkey -v '^?' backward-delete-char

# Aliases
alias gd='gatsby develop'
alias gdc='gatsby clean && gatsby develop'
alias yd='yarn dev'
alias nrd='npm run dev'
alias pld='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias server='python -m SimpleHTTPServer 8080'
alias szsh='source ~/.config/zsh/.zshrc'
alias vim='nvim'
alias ezsh='nvim ~/.config/zsh/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'
alias svim='sudo -E nvim'
alias i3c='nvim ~/.config/i3/config'
alias pb='nvim ~/.config/polybar/config'
alias sx='nvim ~/.config/sxhkd/sxhkdrc'
alias bsp='nvim ~/.config/bspwm/bspwmrc'
alias yayi='yay -S'
alias yays='yay -Ss'
alias yayn='yay -Si'
alias yayr='yay -Rns'
alias yayu='yay -Syu'
alias yaysu='yay -Pu'
alias pacu='pacman -Syu'
alias rn='ranger'
alias dfc='dfc -f -w -t ext4,fuseblk'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias la='exa -la --group-directories-first'
alias ls='exa -l --group-directories-first'
alias rb='cargo build'
alias rc='cargo check'
alias rr='cargo run'
alias nv='nvim'
alias nf='neofetch'
alias stn='stow --adopt -nv'
alias stv='stow --adopt -v'
alias std='stow --adopt -vD'
alias t='tmux'
alias ta='t a'
alias tat='t attach -t'
alias tn='t new -s'
alias tk='t kill-ses -t'
alias tl='t ls'
alias tconf='vim ~/.tmux.conf'
alias code='code .'

# Dynamic aliases
ytp(){
  yarn add -D "@types/"$@
}

ywa(){
  yarn workspace $1 add $2
}

ywa(){
  yarn workspace $1 add $2
}

openpg(){
  sudo -u $1 psql
}

gac(){
  git add . && git commit -m $1
}

gacp(){
  git add . && git commit -m $1 && git push origin master
}

# Layout toggling
setxkbmap -layout us,ar
setxkbmap -option 'grp:alt_space_toggle'

# Compose key to be right alt
setxkbmap -option compose:ralt

xrdb ~/.Xresources
xmodmap ~/.Xmodmap

# Python virtualenvs
export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

# fzf shortcuts
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
