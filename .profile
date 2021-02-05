#!/bin/sh

#
# ~/.profile
#

# Helper to prevent errors on missing tools
try() {
	if command -v "$1" >/dev/null 2>&1
	then
		"$@"
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

# Helper to add executables to $PATH
path_add() {
	# shellcheck disable=SC2068
	for MODULE in $@
	do
		if [ -d "${MODULE}" ]
		then
			export PATH="${MODULE}:${PATH}"
		elif [ -n "${XDG_BIN_HOME}" ]
		then
			path_add "${XDG_BIN_HOME}/${MODULE}"
		fi
	done
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

# Set standard XDG directories
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"

# Set nonstandard and pseudo XDG directories
export XDG_BIN_HOME="${HOME}/.local/bin"

# Fixing misbehaving Java applications
export _JAVA_AWT_WM_NONREPARENTING=1

# Set dotnet directories and privacy settings
export DOTNET_ROOT="${XDG_DATA_HOME}/dotnet"
export DOTNET_TOOLS="${DOTNET_ROOT}/tools"
export NUGET_PACKAGES="${DOTNET_ROOT}/nuget/packages"
export DOTNET_NOLOGO="true"
export DOTNET_CLI_TELEMETRY_OPTOUT="true"

# Add dotnet tools to PATH
path_add "${DOTNET_TOOLS}"

# Set pfetch startup script
export PF_SOURCE="${XDG_CONFIG_HOME}/pfetch/config"

# Add pfetch to PATH
path_add "pfetch"

# Set Golang environment
export GOROOT="/usr/local/go"
export GOPATH="${XDG_BIN_HOME}/go"

# Add go lang tools to PATH
path_add "${GOPATH}/bin" "${GOROOT}/bin"

# Add OS specific scripts to PATH
path_add "$(uname | tr '[:upper:]' '[:lower:]')"

# Add general / universal scripts to PATH
path_add "scripts"

# Integrate settings
try xrdb -merge "${HOME}/.Xresources"

