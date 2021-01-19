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

# Set editor commands.
export VISUAL="$(command -v vim 2>/dev/null)"
export EDITOR="$(command -v vi  2>/dev/null)"

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

# Set Golang environment
export GOROOT="/usr/local/go"
export GOPATH="${HOME}/.bin/go"

# Set PATH to include executable submodules
for module in ${HOME}/.bin/*/
do
	PATH="${PATH}:${module}"
done

# Set additional directories to PATH
export PATH="${PATH}:${DOTNET_TOOLS}:${GOROOT}/bin:${GOPATH}/bin"

# Integrate settings
try xrdb -merge "${HOME}/.Xresources"

