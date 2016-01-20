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

If [YouCompleteMe](https://github.com/Valloric/YouCompleteMe#fedora-linux-x64-installation)
complains:

```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```
