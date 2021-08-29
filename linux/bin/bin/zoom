#!/bin/sh

tmpfile=$(mktemp /tmp/shotscreen.XXXXXXXX.png)
trap "rm -f $tmpfile" 0 HUP INT QUIT ILL ABRT KILL SEGV TERM STOP TSTP

# Take a screenshot
maim -u -m 1 $tmpfile

# Open it in fullscreen (press q to quit)
sxiv -bfZN shotscreen $tmpfile
