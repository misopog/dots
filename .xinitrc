#!/bin/sh
nm-applet & # network manager frontend
sh /home/anon/.fehbg
dunst & # notification handler
xrdb -merge /home/anon/.Xresources & # terminal colors
unclutter & # hides your mouse after some time
lxpokit & # polkit kek
dockd --daemon &
notify-send "DWM Initialized" "Ready to use" & # notify that dwm has successfully executed
bar &
#picom --experimental-backends &
xcompmgr -c -C -t-5 -l-5 -r4.2 -o.55 &
while true; do
    # Log stderror to a file 
    dwm 2> ~/.dwm.log
    # No error logging
    #dwm >/dev/null 2>&1
done
