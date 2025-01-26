#!/bin/sh

sudo mv ~/dotfiles /opt
sudo mkdir /opt/backup
sudo mv ~/* /opt/backup
sudo mv ~/opt/dotfiles ~/
sudo mv /opt/dotfiles ~/.dotfiles

ln -s ~/.dotfiles/config ~/.config
ln -s ~/.dotfiles/config/shell/profile ~/.zprofile
ln -s ~/.dotfiles/config/x11/xinitrc ~/.xinitrc

