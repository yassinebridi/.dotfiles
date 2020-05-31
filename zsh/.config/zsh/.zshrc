ZSH_THEME="robbyrussell"
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions)

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/scripts/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/programs/android-studio/bin:$PATH"
export ZSH="/home/yaslix/.config/oh-my-zsh"

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
alias yd='yarn dev'
alias ydc='yarn clean && yarn dev'
alias pld='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias server='python -m SimpleHTTPServer 8080'
alias szsh='source ~/.config/zsh/.zshrc'
alias vim='nvim'
alias ezsh='nvim ~/.config/zsh/.zshrc'
alias evim='nvim ~/.config/nvim/init.vim'
alias svim='sudo -E nvim'
alias dvim='nvim -d'
alias pb='nvim ~/.config/polybar/config'
alias sx='nvim ~/.config/sxhkd/sxhkdrc'
alias bsp='nvim ~/.config/bspwm/bspwmrc'
alias alc='vim ~/.config/alacritty/alacritty.yml'
alias tconf='vim ~/.tmux.conf'
alias rn='ranger'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias la='exa -la --group-directories-first'
alias ls='exa -l --group-directories-first'
alias stn='stow --adopt -nv'
alias stv='stow --adopt -v'
alias std='stow --adopt -vD'
alias t='tmux'
alias ta='t a'
alias tn='t new -s'
alias tk='t kill-ses -t'
alias tl='t ls'
alias code='code .'
alias cat='bat'
alias nb='newsboat'
alias lg='lazygit'
alias gl='git log'
alias gs='git status'
alias gp='git push origin master'
alias lnv='[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"'

gac(){
  git add . && git commit -m $1
}

gacp(){
  git add . && git commit -m $1 && git push origin master
}

xrdb ~/.Xresources
# xmodmap ~/.Xmodmap

setxkbmap -layout us,ar
setxkbmap -option 'grp:rctrl_rshift_toggle'

# For the autojump to work.
source /usr/share/autojump/autojump.zsh

# fzf shortcuts
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
alias fsearch='rg --hidden . -n | fzf -e --preview="source ~/bin/string2arg; string2arg {}"'
alias org='export vfile=$(fsearch);vim +$(cut -d":" -f2 <<< $vfile) $(cut -d":" -f1 <<< $vfile)'
alias psearch='fzf -e --preview "bat --style=numbers --color=always {} | head -500"'
export FZF_DEFAULT_OPTS='--bind alt-j:down,alt-k:up'

alacrittyOpenWidget() /home/yaslix/bin/alacrittyOpen alac
rangerOpenWidget() /home/yaslix/bin/alacrittyOpen
nautilusOpenWidget() /home/yaslix/bin/alacrittyOpen naut
zle -N alacrittyOpenWidget
zle -N rangerOpenWidget
zle -N nautilusOpenWidget
bindkey '^[^M' alacrittyOpenWidget
bindkey '^[r' rangerOpenWidget
bindkey '^[n' nautilusOpenWidget
