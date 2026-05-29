# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000

# sets prompt
eval "$(starship init zsh)"

# zump to a directory
eval "$(zoxide init zsh)"

# change directory color
LS_COLORS='ow=34';
export LS_COLORS

# load aliases
[ -f "$HOME/.config/shell/aliasrc" ] && source "$HOME/.config/shell/aliasrc"
# load exports
[ -f "$HOME/.config/shell/exports" ] && source "$HOME/.config/shell/exports"
# load functions
[ -f "$ZDOTDIR/zsh-functions" ] && source "$ZDOTDIR/zsh-functions"


# Automatically cd into typed directory.
setopt autocd	
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# Disable ctrl-s to freeze terminal.[]
stty stop undef

# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Basic auto/tab complete:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)       # include hidden files

# initialize completion with cached metadata file
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump"


# starts prompt in command mode
# zle-line-init() { zle -K vicmd; }
# zle -N zle-line-init

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

bindkey '^[[P' delete-char
# bindkey -s '^o' 'lfcd\n'
# bindkey -s '^a' 'bc -l\n'
# bindkey -s '^f' 'cd "$(dirname "$(fzf)")"\n'

# add plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"

# fetch programs
# $HOME/.config/rxfetch/rxfetch
#neofetch
#pfetch
#fm6000 -c random -n
afetch

# make for CS50
# alias make50='make CC=clang CFLAGS="-ggdb3 -O0 -std=c99 -Wall -Werror" LDLIBS="-lcs50 -lm"'

# Enable searching through history
# bindkey '^R' history-incremental-pattern-search-backward

# fzf
if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
  source /usr/share/fzf/completion.zsh
fi
