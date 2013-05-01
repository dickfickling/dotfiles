#!/bin/bash
xscreensaver &
(sleep 2 && xmodmap ~/.Xmodmap) &
xrdb -merge ~/.Xdefaults
xset +fp /usr/share/fonts/local
xset fp rehash
setxkbmap us -variant colemak
setxkbmap -option terminate:ctrl_alt_bksp
xset b off
xbindkeys &
. $HOME/.screenlayout/office.sh
#feh --bg-scale $HOME/drops.jpg
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &
#exec ck-launch-session dbus-launch openbox-session
google-chrome &
urxvt &
exec ck-launch-session dbus-launch goomwwm
