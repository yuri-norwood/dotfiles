#!/bin/sh
# shellcheck disable=SC2155,SC1090

#
# ~/.profile
#

# Include alias definitions
. ~/.aliases

# Set the prompt to a dollar sign
_PS1_DIR() {
	case "$PWD" in
		"$HOME")
			echo "~" ;;
		"/")
			echo "/" ;;
		*)
			echo "${PWD##*/}" ;;
	esac
}
export PS1='$(_PS1_DIR) $ '

# Set additional directories to PATH
export PATH="${PATH}:${HOME}/bin"

# Set EDITOR to the best available vi clone
export EDITOR="$(command -v vim || command -v vi 2>/dev/null)"

# Set PAGER to prevent use of more(1)
export PAGER=less

# Set ENV to provide shell specific settings
export ENV="${HOME}/.kshrc"

# Integrate settings
xrdb -merge ~/.Xresources

