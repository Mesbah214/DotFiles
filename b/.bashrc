#
# ~/.bashrc
#

# If not running interactively, don't do anything
# Works for nvm
[[ $- != *i* ]] && return

[ -z "$NVM_DIR" ] && export NVM_DIR="$XDG_DATA_HOME/nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
source /usr/share/nvm/init-nvm.sh

# source aliases
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"

# PS1='[\u@\h \W]\$ '

LS_COLORS='ow=4;34';
export LS_COLORS
