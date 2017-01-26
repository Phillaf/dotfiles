#!/bin/bash

sudo dnf update -y

git submodule init
git submodule update
vim +PluginInstall +qall # or in vim :PluginInstall

source .scripts/install/google-chrome.sh
source .scripts/install/docker.sh
source .scripts/install/docker-permissions.sh
source .scripts/install/gsettings.sh
source .scripts/install/php7.sh
source .scripts/install/ctags.sh
