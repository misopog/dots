#!/bin/sh

nm-applet & # network manager frontend
xcompmgr & # composite manager
nitrogen --restore & # wallpaper
dunst & # notification handler
xrdb -merge /home/anon/.Xresources & # terminal colors
unclutter & # hides your mouse after some time
lxpokit & # polkit kek

notify-send "DWM Initialized" "Ready to use" & # notify that dwm has successfully executed
sbar & # status bar
exec dwm
