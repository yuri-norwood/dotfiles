#!/bin/sh
# shellcheck disable=SC1090

#
# Xorg Init
#

# Source Profile
. ~/.profile

# Set session settings
USERXSESSION="${XDG_CONFIG_HOME}/x11/xsession"
USERXSESSIONRC="${XDG_CONFIG_HOME}/x11/xsessionrc"
ALTUSERXSESSION="${XDG_CONFIG_HOME}/x11/Xsession"
ERRFILE="${XDG_CONFIG_HOME}/x11/xsession-errors"

# Integrate settings
xrdb -merge "${XDG_CONFIG_HOME}/X11/Xresources"

# Select Graphical Environment
if [ ! -x "$(command -v dwm)" ] && [ "$(uname)" = "OpenBSD" ]
then
	exec fvwm
fi

# Prefer dwm(1)
exec dwm

