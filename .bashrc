# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

setxkbmap -option ctrl:nocaps

alias phpcs='vendor/bin/phpcs -p --extensions=php --standard=vendor/cakephp/cakephp-codesniffer/CakePHP ./src'
