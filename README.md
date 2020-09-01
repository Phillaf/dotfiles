# Dotfiles

I don't recommend using thwese unless you understand and want their behavior.

- [ubuntu18](https://github.com/phillaf/dotfiles/tree/ubuntu18)  
- [fedora32](https://github.com/phillaf/dotfiles/tree/fedora32)
- [fedora28](https://github.com/phillaf/dotfiles/tree/fedora28)  
- [korora25](https://github.com/phillaf/dotfiles/tree/korora25)

```
git clone --bare -b fedora28 https://phillaf@github.com/phillaf/dotfiles.git ~/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
mv .bashrc .bashrc-bkp
config checkout
```
