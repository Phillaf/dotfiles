# environment

-.bashrc aliases  
-.tmux config  
-.vim config  

## Vim installation
```
git submodule init
git submodule update
vim +PluginInstall +qall # or in vim :PluginInstall
```

## phpcs

```
composer global require "squizlabs/php_codesniffer=*"
cd ~/ && composer require --dev "cakephp/cakephp-codesniffer=2.*"
phpcs --config-set installed_paths ~/vendor/cakephp/cakephp-codesniffer
```
## Tweaks

dconf-editor > org/gnome/shell/overrides > workspaces-only-on-primary
