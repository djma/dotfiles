alias ls='ls --color=tty'

# User specific aliases and functions
alias screen='screen -e\`n -s /bin/bash'
alias grepr='grep -r -n --color=auto'

# external binaries
alias ghc='/cygdrive/c/Program\ Files\ \(x86\)/Haskell\ Platform/2011.2.0.1/bin/ghc.exe'
alias ghci='ghc --interactive'
alias lsof='~/external-bin/handle.exe'
alias python='/cygdrive/c/Python27/python.exe -i'
function vlc(){
  /cygdrive/c/Program\ Files\ \(x86\)/VideoLAN/VLC/vlc.exe `cygpath -w $1` > /dev/null 
}
function hbcp() {
# known bugs: can't be in same directory as file to hobocopy
  echo "~/external-bin/HoboCopy.exe" `cygpath -w $1 | grep -o '^.*\\\'` `cygpath -w $2` `echo $1 |grep -o '[A-Za-z.0-9]*$'`
  ~/external-bin/HoboCopy.exe `cygpath -w $1 | grep -o '^.*\\\'` `cygpath -w $2` `echo $1 |grep -o '[A-Za-z.0-9]*$'`
}



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Git stuff
source ~/.bash-completion/git

# Promt formatting
PS1="\[\e[1;36m\][@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\n\[\e[0m\]\$ "

set -o vi

# To be able to paste from clipboard, see .inputrc as well...
stty lnext ^q stop undef start undef


