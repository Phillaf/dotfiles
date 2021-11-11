# Dotfiles

I don't recommend using thwese unless you understand and want their behavior.

- [korora25](https://github.com/phillaf/dotfiles/tree/korora25)
- [fedora28](https://github.com/phillaf/dotfiles/tree/fedora28)  
- [fedora32](https://github.com/phillaf/dotfiles/tree/fedora32)  
- [fedora33](https://github.com/phillaf/dotfiles/tree/fedora33)  
- [fedora35](https://github.com/phillaf/dotfiles/tree/fedora35)
- [ubuntu18](https://github.com/phillaf/dotfiles/tree/ubuntu18)  


```
git clone --bare -b fedora28 https://phillaf@github.com/phillaf/dotfiles.git ~/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mv .bashrc .bashrc-bkp
config checkout
```
