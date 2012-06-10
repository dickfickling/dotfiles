#!/bin/bash
(sleep 2 && xmodmap ~/.Xmodmap) &
setxkbmap us -variant colemak
. $HOME/.screenlayout/default.sh
feh --bg-scale room_002.png
#autocutsel -fork &
#autocutsel -selection PRIMARY -fork &
exec ck-launch-session dbus-launch openbox-session
