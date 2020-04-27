ZSH_THEME="agnoster"
plugins=(nvm zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH="/home/yaslix/.config/oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

source /usr/share/autojump/autojump.zsh

export PATH="$PATH:`yarn global bin`"
export PATH="$PATH:$HOME/scripts/bin"

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
# alias ls='la --color -h --group-directories-first'
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

setxkbmap -layout us,ar
setxkbmap -option 'grp:alt_space_toggle'
xrdb ~/.Xresources
xmodmap ~/.Xmodmap

export WORKON_HOME=~/.virtualenvs
source /usr/bin/virtualenvwrapper.sh

source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
