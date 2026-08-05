#!/usr/bin/env bash
dir="${XDG_STATE_HOME:-$HOME/.local/state}/zellij"
mkdir -p "$dir"
file="$dir/last-session"

current="$ZELLIJ_SESSION_NAME"
target="$(cat "$file" 2>/dev/null)"
sessions="$(zellij ls -sn 2>/dev/null)"

if [ -z "$target" ] || [ "$target" = "$current" ] || ! grep -qx -- "$target" <<< "$sessions"; then
  target="$(grep -vx -- "$current" <<< "$sessions" | head -n1)"
fi

[ -n "$target" ] || exit 0
printf '%s' "$current" > "$file"
zellij action switch-session "$target"
