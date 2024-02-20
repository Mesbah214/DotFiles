if status is-interactive
    # Commands to run in interactive sessions can go here
alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
fish_vi_key_bindings
bind --mode insert --sets-mode default jk repaint
zoxide init fish | source
end
