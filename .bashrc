# .bashrc

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


# User specific aliases and functions
setxkbmap -option ctrl:nocaps

# Prevent the stupid stop-printing-terminal feature that I accidentaly hit with ctl+s
# recover with ctl+q
stty -ixon


export VIM_PROFILE="default"
export PHPUNIT_OPTIONS=""
export PHPCS_OPTIONS="-p --standard=PSR2 ./src/"
export PHPFIXER_OPTIONS="--dry-run --verbose --diff"
export PATH=$PATH:~/.config/composer/vendor/bin/
# Source environment variables
if [ -f ~/.env ]; then
	. ~/.env
fi

alias vim='vim -u "~/.vim/profiles/$VIM_PROFILE"'
alias cov='phpunit $PHPUNIT_OPTIONS --coverage-text'
alias sniff='phpcs $PHPCS_OPTIONS'
alias fix='php-cs-fixer fix $PHP_FIXER_OPTIONS'
