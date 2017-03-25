#!/bin/bash
sudo dnf -y install neovim
sudo dnf -y install python2-neovim python3-neovim

pecl install msgpack

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

sudo dnf install xclip
sudo pip install neovim
