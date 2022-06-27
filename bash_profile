#
# ~/.bash_profile
#

# Default directories
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

# Disable files
export LESSHISTFILE=-

# Fixing files
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"

# xsession start script
USERXSESSION="$XDG_CACHE_HOME/X11/xsession"
USERXSESSIONRC="$XDG_CACHE_HOME/X11/xsessionrc"
ALTUSERXSESSION="$XDG_CACHE_HOME/X11/Xsession"
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
