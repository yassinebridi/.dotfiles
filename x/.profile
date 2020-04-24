# Profile file. Runs on login. Environmental variables are set here.

# Adds `~/.local/bin` to $PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export EDITOR=/usr/bin/vim
export TERMINAL=/usr/local/bin/st
export BROWSER="google-chrome-stable"
export READER="zathura"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.cargo/bin:$PATH"
