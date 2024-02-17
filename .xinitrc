#sets resolution
xrandr --output Virtual-1 --mode 1280x720

#sets wallapaper
xwallpaper --zoom /home/nezi/Downloads/gustave.png

#sets hotkeys
sxhkd &

#init status bar 
~/.scripts/status.sh &

#execs dwm
exec dwm

