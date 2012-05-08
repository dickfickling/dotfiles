#!/bin/bash

cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.conkyrc .
cp ~/.dir_colors .
cp ~/.git_completion.sh .
cp ~/.tmux.conf .
cp ~/.xinitrc .
cp ~/.Xmodmap .
cp /etc/xorg.conf .
cp /etc/pacman.conf .
cp /usr/share/X11/xkb/symbols/us .
cp ~/.vimrc .

echo "Update for $(date)"
git add -A
git commit -m "Update for $(date)"
git push
