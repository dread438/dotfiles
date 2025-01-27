#!/bin/sh

mkdir ~/git && cd $_
git clone --quiet https://github.com/dread438/dwm
git clone --quiet https://github.com/dread438/st
git clone --quiet https://github.com/dread438/slstatus
git clone --quiet --depth 1 https://github.com/jeffreytse/zsh-vi-mode
git clone --quiet --depth 1 https://github.com/zdharma-continuum/fast-syntax-highlighting
git clone --quiet --depth 1 https://aur.archlinux.org/yay-bin.git