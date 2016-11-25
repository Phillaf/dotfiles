#!/bin/bash

sudo dnf update

git submodule init
git submodule update
vim +PluginInstall +qall # or in vim :PluginInstall

source .scripts/google-chrome.sh
source .scripts/docker.sh
source .scripts/docker-permissions.sh
source .scripts/gsettings.sh
