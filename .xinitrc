#!/bin/sh
xrdb -merge /home/anon/.Xresources & 
xwallpaper --zoom $(cat ~/.cache/lastwall)
xbanish &
dunst &
lxpokit & # polkit kek
notify-send "DWM Initialized" "Ready to use" & 
sbar &
pactl load-module module-switch-on-connect &
echo "no" > ~/.cache/wmexit &
while true
do
    wmExit=$(cat ~/.cache/wmexit)
    if [ $wmExit = "yes" ]
    then
	    exit
    else
    nm-applet &
    dwm 2> ~/.cache/dwm.log ;
    fi
done
