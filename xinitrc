#!/bin/bash
(sleep 2 && xmodmap ~/.Xmodmap) &
setxkbmap us -variant colemak
setxkbmap -option terminate:ctrl_alt_bksp
#. $HOME/.config/.screenlayout/default.sh
feh --bg-scale $HOME/drops.jpg
xset b off
xbindkeys &
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &
#exec ck-launch-session dbus-launch openbox-session
chromium &
urxvt &
exec ck-launch-session dbus-launch goomwwm
