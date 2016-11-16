# .bashrc

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

setxkbmap -option ctrl:nocaps

# Prevent the stupid stop-printing-terminal feature that I accidentaly hit with ctl+s
# recover with ctl+q
stty -ixon

export VIM_PROFILE="default"
export PATH=$PATH:~/.config/composer/vendor/bin/

alias vim='vim -u "~/.vim/profiles/$VIM_PROFILE"'

# Source local definitions
if [ -f ~/.bash_local ]; then
	. ~/.bash_local
fi

