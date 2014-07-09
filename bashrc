# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# nvm
if [ -f ${HOME}/.node/nvm.sh ]; then
  source ${HOME}/.node/nvm.sh
fi
# User specific aliases and functions

alias ls='ls --color=tty'
PATH="$PATH":/usr/local/bin/bin
export PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"


