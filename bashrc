#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -z "$NVM_DIR" ] && export NVM_DIR="$HOME/.nvm"
source /usr/share/nvm/nvm.sh
source /usr/share/nvm/bash_completion
source /usr/share/nvm/install-nvm-exec
source /usr/share/nvm/init-nvm.sh

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'

set -o vi
# alias ls='ls --color=auto'

# PS1='[\u@\h \W]\$ '
export PATH="$HOME/.local/bin:$PATH"
# export PATH="/home/zero/.local/share/nvim/lsp_servers/clangd/clangd/bin:$PATH"
# prompt theme
eval "$(starship init bash)"

LS_COLORS='ow=4;34';
export LS_COLORS

# fetch program
pfetch

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
