# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# User specific aliases and functions

alias ls='ls --color=tty'
