#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap

export _JAVA_AWT_WM_NONREPARENTING=1

if [ -f "$userresources" ]; then
xrdb -merge "$userresources"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
[ -x "$f" ] && . "$f"
done
unset f
fi

exec bspwm
