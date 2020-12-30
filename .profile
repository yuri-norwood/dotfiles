#!/bin/sh
# shellcheck disable=SC2155,SC1090

#
# ~/.profile
#

# Include alias definitions
. ~/.aliases

# Set the prompt to a dollar sign
export PS1="\$ "

# Set additional directories to PATH
export PATH="${PATH}:${HOME}/bin"

# Set EDITOR to the best available vi clone
export EDITOR="$(command -v vim || command -v vi 2>/dev/null)"
