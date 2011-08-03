# .bashrc

# User specific aliases and functions
alias screen='screen -e\`n'
alias grepr='grep -r -n'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Git stuff
source .bash-completion/git

# Promt formatting
PS1="\[\e[1;36m\][@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\n\[\e[0m\]\$ "

set -o vi
