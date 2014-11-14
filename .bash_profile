# PATH - ensure user-installed apps are default
PATH=/usr/local/bin:$PATH

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# PROMPT
GIT_PS1_SHOWDIRTYSTATE=1
source ~/.git-prompt.sh
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\033[ 36 m\] \u \[\033[ m\] @ \[\033[ 32 m\] \h: \[\033[ 33;1 m\] \w \[\033[ m\] \$ "
export PS1="\[\033[36m\]\u\[\033[0m\]:\[\033[0;33m\]\w\[\033[0;35m\]\$(__git_ps1)\[\033[0m\]\$ "

# COLOR
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

####### ALIASES #######
alias c='clear'
alias ls='ls -G'
alias ll='ls -Gal'
alias htop='sudo htop'
alias code='cd /Users/matt.ritter/code/'

## get rid of command not found ##
alias cd..='cd ..'
 
## a quick way to get out of current directory ##
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'
alias .....='cd ../../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# bash-completion
  if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi
