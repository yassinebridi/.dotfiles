#!/bin/sh

cat <<EOF | xmenu | sh &
Alacritty		alacritty
Chrome		google-chrome-stable
Onboard		onboard
Ranger		$TERMINAL -d 80 25 --class ranger,Ranger -e $FILE 
Nautilus		nautilus

Suspend			playerctl pause && systemctl suspend && slock || systemctl suspend && slock
Lock	  		playerctl pause && slock || slock
Exit	  		killall Xorg
Shutdown		systemctl poweroff
Reboot			systemctl reboot
EOF
