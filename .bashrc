# .bashrc

# User specific aliases and functions
alias screen='screen -e\`n'
alias grepr='grep -r -n'

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source Facebook definitions
if [ -f /home/engshare/admin/scripts/master.bashrc ]; then
	. /home/engshare/admin/scripts/master.bashrc
fi

# Promt formatting
PS1="\[\e[1;36m\][@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\n\[\e[0m\]\$ "

set -o vi
