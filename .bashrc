# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
if [ -f /etc/skel/.bashrc ]; then
	. /etc/skel/.bashrc
fi
source .config/git/git-prompt.sh
source .config/git/git-completion.sh

# Disable caps lock
setxkbmap -option ctrl:nocaps

# Prevent the stupid stop-printing-terminal feature that I accidentaly hit with ctl+s
# recover with ctl+q
stty -ixon

# Git prompt
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM='auto'
#export GIT_PS1_SHOWCOLORHINTS=true
export PS1='\[\033[38;5;37m\]\A\[\033[38;5;15m\] \[\033[38;5;33m\]\u\[\033[38;5;37m\]@\[\033[38;5;33m\]\h\[\033[38;5;15m\] \[\033[38;5;64m\]\W\[\033[38;5;136m\]$(__git_ps1 " (%s)")\[\033[38;5;245m\] \$\[\033[00m\] '

# Vim + php env
export VIM_PROFILE="default"
export PHPUNIT_OPTIONS=""
export PHPCS_OPTIONS="-p --standard=PSR2 ./src/"
export PATH=$PATH:~/.config/composer/vendor/bin/

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias cov='bin/phpunit --coverage-clover clover.xml --testsuite unit --coverage-text'
alias sniff='bin/phpcs'
alias space="du -h . | grep '[0-9\.]\+G'"
alias dc="docker-compose"
alias dcd="docker stop \$(docker ps -a -q); docker rm \$(docker ps -a -q); docker volume rm \$(docker volume ls -q); docker network rm \$(docker network ls -q)"
alias dp='docker ps -a --format "table {{.Names}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}"'
alias vim='nvim'
alias please='sudo $( history -p !! )'
alias fuck='sudo $( history -p !! )'
alias fucking='sudo'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
