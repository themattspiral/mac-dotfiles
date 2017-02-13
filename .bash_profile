# PATH - ensure user-installed apps are default
PATH=/usr/local/bin:/usr/local/heroku/bin:$PATH

# PROMPT
GIT_PS1_SHOWDIRTYSTATE=1
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
#export PS1="\[\033[ 36 m\] \u \[\033[ m\] @ \[\033[ 32 m\] \h: \[\033[ 33;1 m\] \w \[\033[ m\] \$ "
export PS1="\[\033[36m\]\u\[\033[0m\]:\[\033[0;33m\]\w\[\033[0;35m\]\$(__git_ps1)\[\033[0m\]\$ "

# COLOR
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# bash-completion (including git completion to define __git_ps1 in the prompt above)
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# this loads nvm
export NVM_DIR="/Users/matt.ritter/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# probably want to find a better way to do this, as it slows down shell startup
# export M2=`brew --prefix maven`/libexec/bin
# export M2_HOME=`brew --prefix maven`/libexec


####### ALIASES #######
alias c='clear'
alias ls='ls -G'
alias ll='ls -Gal'
alias htop='sudo htop'
alias cd..='cd ..'
usedSpace() {
  du -h -d 1 $1;
}
alias used=usedSpace

# git, npm, etc
alias branchhist='for branch in `git branch -r | grep -v HEAD`;do echo -e `git show --format="%ci %cr (%cn)" $branch | head -n 1` \\t$branch; done | sort -r'
alias newb="git checkout -b"
alias npml="npm list --depth=0"

# project specific
alias drive='cd /Users/matt.ritter/Google\ Drive'
alias ard='cd /Users/matt.ritter/Documents/Arduino'
alias code='cd /Users/matt.ritter/code'
alias cbi='cd /Users/matt.ritter/code/cbi'
