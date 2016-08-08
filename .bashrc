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

alias phpcs='phpcs -p --extensions=php --standard=CakePHP ./src'
alias ctags='ctags -R --exclude=.git --exclude=*assets/vendor --exclude=*webroot --exclude=node_modules --fields=+l'
alias dc=docker-compose
alias vim=vimx
