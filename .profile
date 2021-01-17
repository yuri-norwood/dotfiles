#!/bin/sh

#
# ~/.profile
#

# Helper to prevent errors on missing tools
try() {
	if [ -x "$(command -v "$1")" ]
	then
		echo "$@" | sh
	fi
}

# Helper to calculate PS1
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

# Include alias definitions
. ~/.aliases

# Set the prompt to the current directory and a dollar sign
export PS1='$(_PS1_DIR) $ '

# Set EDITOR to the best available vi clone
export EDITOR="$(command -v vim || command -v vi 2>/dev/null)"

# Set PAGER to prevent use of more(1)
export PAGER=less

# Set ENV to provide shell specific settings
export ENV="${HOME}/.kshrc"

# Fixing misbehaving Java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# Set dotnet directories and privacy settings
export DOTNET_ROOT="${HOME}/.dotnet"
export DOTNET_TOOLS="${DOTNET}/tools"
export NUGET_PACKAGES="${HOME}/.nuget/packages"
export DOTNET_NOLOGO="true"
export DOTNET_CLI_TELEMETRY_OPTOUT="true"

# Set pfetch startup script
export PF_SOURCE="${HOME}/.pfetchrc"

# Set PATH to include ~/.tools submodules
for tool in $(echo "${HOME}/.tools/*/")
do
	PATH="${PATH}:${tool}"
done

# Set additional directories to PATH
export PATH="${PATH}:${HOME}/.bin:${DOTNET_TOOLS}"

# Integrate settings
try xrdb -merge "${HOME}/.Xresources"

