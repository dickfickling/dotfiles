#!/bin/bash

cp ~/.bash_profile .
cp ~/.bashrc .
cp ~/.conkyrc .
cp ~/.dir_colors .
cp ~/.git_completion.sh .
cp ~/.tmux.conf .
cp ~/.xinitrc .
cp ~/.Xmodmap .
cp /etc/xorg.conf ./etc/
cp /etc/pacman.conf ./etc/
cp /usr/share/X11/xkb/symbols/us .
cp ~/.vimrc .
cp ~/.vim/default.py ./.vim/
cp -R ~/.vim/colors ./.vim/

echo "Update for $(date)"
git add -A
git commit -m "Update for $(date)"
git push
