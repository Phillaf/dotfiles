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
export PATH=$PATH:~/.composer/vendor/bin/
xport VIM_PROFILE="mindgeek"

alias cov='phpunit --coverage-text'
alias sniff='phpcs -p --standard=PSR2 ./src/ ./tests/'
alias fix='php-cs-fixer fix --dry-run --verbose --diff'
alias vim='vim -u "~/.vim/profiles/$VIM_PROFILE"'

# Source local definitions
if [ -f ~/.bash_local ]; then
	. ~/.bash_local
fi

