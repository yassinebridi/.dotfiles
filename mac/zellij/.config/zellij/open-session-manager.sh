#!/usr/bin/env bash
dir="${XDG_STATE_HOME:-$HOME/.local/state}/zellij"
mkdir -p "$dir"
[ -n "$ZELLIJ_SESSION_NAME" ] && printf '%s' "$ZELLIJ_SESSION_NAME" > "$dir/last-session"
zellij action launch-or-focus-plugin zellij:session-manager --floating --move-to-focused-tab
