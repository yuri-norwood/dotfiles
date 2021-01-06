#!/bin/sh
# shellcheck disable=SC1090

#
# Xorg Init
#

# Source Profile
. ~/.profile

# Select Graphical Environment
if [ ! -x "$(command -v dwm)" ] && [ "$(uname)" = "OpenBSD" ]
then
	exec fvwm
fi

# Prefer dwm(1)
exec dwm

