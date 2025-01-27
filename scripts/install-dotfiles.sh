#!/bin/sh

mv ~/dotfiles /tmp
mkdir /tmp/backup
find ~/ -mindepth 1 -maxdepth 1 -exec mv {} /tmp/backup \;
mv /tmp/dotfiles ~/.dotfiles
mv /tmp/backup ~/backup

ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/config/shell/profile ~/.zprofile
ln -s ~/.dotfiles/config/x11/xinitrc ~/.xinitrc
