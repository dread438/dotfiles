#!/bin/sh

sudo mkdir -p /usr/share/zsh/plugins
sudo cp ~/git/fast-syntax-highlighting /usr/share/zsh/plugins
sudo cp ~/git/zsh-vi-mode /usr/share/zsh/plugins
sudo rm -rf /usr/share/zsh/plugins/fast-syntax-highlighting/.git
sudo rm -rf /usr/share/zsh/plugins/zsh-vi-mode/.git