[[ -n "$XDG_CONFIG_HOME" ]] || export XDG_CONFIG_HOME=$HOME/.config
[[ -n "$XDG_CACHE_HOME"  ]] || export XDG_CACHE_HOME=$HOME/.cache
[[ -n "$XDG_DATA_HOME"   ]] || export XDG_DATA_HOME=$HOME/.local/share

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export TERMINAL=/usr/bin/alacritty
export BROWSER=/usr/bin/google-chrome-stable
export FILE=/usr/bin/lf
export EDITOR=nvim
export READER="zathura"
export IMAGE="sxiv"
export PLAYER="mpv"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export GNUPGHOME="${XDG_CONFIG_HOME}/gnupg"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history

export PSQLRC="$XDG_CONFIG_HOME/pg/psqlrc"
export PSQL_HISTORY="$XDG_CACHE_HOME/pg/psql_history"
export PGPASSFILE="$XDG_CONFIG_HOME/pg/pgpass"
export PGSERVICEFILE="$XDG_CONFIG_HOME/pg/pg_service.conf"

export NOTMUCH_CONFIG="$XDG_CONFIG_HOME"/notmuch/notmuchrc
export NMBGIT="$XDG_DATA_HOME"/notmuch/nmbug

export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export NVM_DIR="$XDG_DATA_HOME"/nvm

export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='
	--bind alt-j:down,alt-k:up
	--color=fg:8,hl:201,bg+:54 
'

source "$HOME/.cargo/env"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
