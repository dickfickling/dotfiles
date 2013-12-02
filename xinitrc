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
google-chrome &
urxvt &
dropboxd &
devmon --exec-on-drive "pcmanfm %d" &
exec dbus-launch goomwwm
