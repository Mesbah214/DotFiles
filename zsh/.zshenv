#
# ~/.zshenv
#

# loads environmental variables
[ -f "$HOME/.config/shell/profile" ] && source "$HOME/.config/shell/profile"
[[ -f "$XDG_CONFIG_HOME/X11/Xresources" ]] && xrdb "$XDG_CONFIG_HOME/X11/Xresources"
