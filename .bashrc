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
export PATH=$PATH:~/.config/composer/vendor/bin/
# Source environment variables
if [ -f ~/.env ]; then
	. ~/.env
fi

alias cov='phpunit $PHPUNIT_OPTIONS --coverage-text'
alias sniff='phpcs $PHPCS_OPTIONS'
alias fix='php-cs-fixer fix --filters=$PHPFIXER_FILTERS'
alias diffix='sh ~/.scripts/utils/diffix.sh'
alias space="du -h . | grep '[0-9\.]\+G'"
alias dc="docker-compose"
alias dd="docker stop \$(docker ps -a -q); docker rm \$(docker ps -a -q); docker volume rm \$(docker volume ls -q)"
alias vim='nvim'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
