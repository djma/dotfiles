# master.bashrc is meant to be sourced by all bash users so be careful
#
# if you are looking instead at ~/.bashrc then do whatever you want!

# please uncomment these two lines in your personal ~/.bashrc:
#export ADMIN_SCRIPTS=/home/engshare/admin/scripts
#source "$ADMIN_SCRIPTS"/master.bashrc
# this keeps you up to date with the latest master.bashrc changes; if you opt
# not to, you'll be on you own staying up to date with general changes

# if you want to be able to easily make, test, and commit changes to
# master.bashrc and master.shellrc in svnroot/admin/scripts:
# - checkout a copy of svnroot/admin to ~/admin
# - cron it to auto-up (having a stale ~/admin is asking for pain)
# - source master.bashrc from your ~/.bashrc instead like so:
#export ADMIN_SCRIPTS=~/admin/scripts
#source "$ADMIN_SCRIPTS"/master.bashrc

# when you copy master.bashrc to ~/.bashrc you don't have to actually keep
#   the remainder of these lines (since they are pulled in by sourcing
#   master.bashrc), though you can (doing them twice is harmless and adds
#   negilble time to the loading of the shell)
# instead you can start making your personal modifications


if [[ -z "$ADMIN_SCRIPTS" ]]
then
  export ADMIN_SCRIPTS='/home/engshare/admin/scripts'
fi

# things that work in more than just bash
source "$ADMIN_SCRIPTS"/master.shellrc

#
# bash-specific things below
#

# Provide tab-completion for git users
source "$ADMIN_SCRIPTS"/bash-completion/git

# Provide tab-completion for arc users
source /home/engshare/devtools/arcanist/resources/shell/bash-completion

# provide tab-completion for ptail users
source "$ADMIN_SCRIPTS"/bash-completion/ptail

# fix long line entry wrapping in bash
shopt -s checkwinsize

PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME} ${PWD}\007"'
PS1="[\u@\h \w] "
