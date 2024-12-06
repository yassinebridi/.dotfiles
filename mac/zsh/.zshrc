ZSH_THEME="robbyrussell"
# plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions zsh-autocomplete)
plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions)
 
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="$PATH:$HOME/scripts/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export PATH=~/.config/npm-global/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

export GOPATH=~/go
export EDITOR='nvim'
export VISUAL='nvim'
export PATH=$PATH:$GOPATH/bin

# export DOCKER_HOST=$(docker context inspect | jq '.[] | select(.Name == "'$(docker context show)'") | .Endpoints.docker.Host' -r)
export DOCKER_HOST="unix://${HOME}/.colima/default/docker.sock"
export GEM_HOME="$HOME/.gem"

# export DOCKER_HOST=$(docker context inspect | jq '.[] | select(.Name == "'$(docker context show)'") | .Endpoints.docker.Host' -r)
# export DOCKER_HOST=tcp://colima:2375

# Android Paths
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:"/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
export PATH=$PATH:$HOME/.kube/kubediff

#MySQL
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/mysql@8.0/lib"
export CPPFLAGS="-I/opt/homebrew/opt/mysql@8.0/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/mysql@8.0/lib/pkgconfig"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export HOMEBREW_NO_AUTO_UPDATE=1

export XDG_CONFIG_HOME="$HOME/.config"

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

# Trash
alias tm="trash-put"
alias te="trash-empty"
alias tl="trash-list"
alias ts="trash-restore"
alias td="trash-rm"

alias sr='serpl'
alias tf='terraform'
 
alias p='pipenv'
alias y='yarn'
alias yw='yarn workspace'
alias yd='yarn dev'
alias yg='yarn gen'
alias nd='nr dev'
alias ys='yarn start'
alias yc='yarn typecheck'
alias ytp='youtube-dl -o "%(playlist_index)s-%(title)s.%(ext)s"'
alias yts='youtube-dl --write-sub --sub-lang en --skip-download'
alias a='z' # Zoxide to have the same alias, across zsh and lf

alias server='python -m SimpleHTTPServer 8080'
alias szsh='source ~/.config/zsh/.zshrc'

alias v='nvim'
alias svim='sudo -E nvim'
alias dvim='nvim -d'

alias stn='stow -v -n -t ~'
alias str='stow -v -R -t ~'
alias std='stow -v -D -t ~'

alias t='runTmux'
alias ta='tmux a'
alias tn='tmux new -s'
alias tk='tmux kill-ses -t'
alias gp='git push'
alias code='code .'
alias cat='bat'
alias lg='lazygit'
alias ld='lazydocker'
alias gb='gobang'
alias f='xplr'

alias la='eza -la --group-directories-first --icons=always --color=always --git'
alias ls='eza -l --group-directories-first --icons=always --color=always --git'

alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

alias pg_start="brew services start postgresql"
alias pg_stop="brew services stop postgresql"
alias pas='kill -9 $(lsof -t -i:8000) ; php artisan serve'
alias pnpx='pnpm dlx'
alias h='helm'
alias wh='watch '
alias k='kubectl'
alias kgp='kubectl get pods'
alias kgpw='watch kubectl get pods'
alias kgs='kubectl get svc'
alias kgd='kubectl get deployments.apps'
alias kl='kubectl logs --follow'
alias kc='kubecm'
alias kt='watch kubectl top pods --sort-by=memory'
 
alias yz='yazi'
alias zl='zellij'

# zoxide(autojump replacement)
eval "$(zoxide init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=`which chromium`


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

eval "$(github-copilot-cli alias -- "$0")"

function aws_setup() {
  CLUSTER_NAME=$1
  REGION=$2
  aws eks update-kubeconfig --region $REGION --name $CLUSTER_NAME
}
function gcp_setup() {
  GCP_PROJECT_ID=$1
  gcloud config set project $GCP_PROJECT_ID
  gcloud container clusters get-credentials cluster-nima --region us-central1 --project $GCP_PROJECT_ID
}
function kex() {
  kubectl exec -it $1 -- sh
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
 
# source <(fx --comp zsh)
source $HOME/.phpbrew/bashrc
export PHPBREW_SET_PROMPT=1
export PHPBREW_RC_ENABLE=1

export PATH="/opt/homebrew/opt/php@8.2/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.2/sbin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/php@8.2/lib"
export CPPFLAGS="-I/opt/homebrew/opt/php@8.2/include"
 
eval "$(starship init zsh)"
# eval "$(atuin init zsh)"

# _fzf_compgen_path() {
#     fd --hidden --exclude .git . "$1"
# }
#
# _fzf_compgen_dir() {
#     fd --type=d --hidden --exclude .git . "$1"
# }
#
# autoload -Uz compinit
#
# for dump in ~/.zcompdump(N.mh+24); do
#     compinit
# done
#  
# fpath+=~/.zfunc
# compinit -C

# source $HOME/.config/broot/launcher/bash/br
export HOMEBREW_PREFIX="/opt/homebrew"
# source ${HOMEBREW_PREFIX}/share/zsh/site-functions/kubesess.sh
# source ${HOMEBREW_PREFIX}/opt/kubesess/etc/bash_completion.d/completion.sh
