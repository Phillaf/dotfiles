#!/bin/bash

dnf install xorg-x11-utils

git clone https://github.com/deadalnix/pixel-saver.git

mkdir -p ~/.local/share/gnome-shell/extensions
mv pixel-saver/pixel-saver@deadalnix.me -t ~/.local/share/gnome-shell/extensions
rm -rf ./pixel-saver

gnome-shell-extension-tool -e pixel-saver@deadalnix.me

