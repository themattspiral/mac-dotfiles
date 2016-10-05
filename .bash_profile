# PATH - ensure user-installed apps are default
#PATH=/usr/local/bin:/Users/matt.ritter/android-sdk-macosx/platform-tools:$PATH
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
usedSpace() {
  du -h -d 1 $1;
}
alias used=usedSpace

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

# git, npm, etc
alias branchhist='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%ci %cr (%cn)" $branch | head -n 1` \\t$branch; done | sort -r'
alias newb="git checkout -b"
alias npml="npm list --depth=0"

## SPECIFIC ##
alias drive='cd /Users/matt.ritter/Google\ Drive'
alias ard='cd /Users/matt.ritter/Documents/Arduino'
alias code='cd /Users/matt.ritter/code'
alias cbi='cd /Users/matt.ritter/code/cbi'

export M2=`brew --prefix maven`/libexec/bin
export M2_HOME=`brew --prefix maven`/libexec

export NVM_DIR="/Users/matt.ritter/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
