alias ls='ls --color=tty'

# User specific aliases and functions
alias screen='screen -e\`n -s /bin/bash'
alias grepr='grep -r -n --color=auto'
alias vim='vim -X'

# Git stuff
source ~/.bash-completion/git

# Promt formatting
PS1="\[\e[1;36m\][@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\[\e[0m\]\$ "

set -o vi

# To be able to paste from clipboard, see .inputrc as well...
stty lnext ^q stop undef start undef
