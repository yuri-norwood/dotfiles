#!/bin/sh
# shellcheck disable=SC1090,SC2155

#
# ~/.profile
#

# Helper functions {{{

# Helper to safely include external scripts
include() {
	if [ -f "$1" ]
	then
		. "$1"
	elif [ -f "${XDG_CONFIG_HOME}/$1" ]
	then
		. "${XDG_CONFIG_HOME}/$1"
	fi
}

# Helper to add executables to $PATH
path_add() {
	# If the directory exists, add it to PATH
	if [ -d "$1" ]
	then
		export PATH="$1:${PATH}"

	# Otherwise try as a subdir of XDG_BIN_HOME
	elif [ -d "${XDG_BIN_HOME}" ] && [ -d "${XDG_BIN_HOME}/$1" ]
	then
		export PATH="${XDG_BIN_HOME}/$1:${PATH}"
	fi
}

# Helper functions }}}

# Set standard XDG directories
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_CACHE_HOME="${HOME}/.cache"

# Set nonstandard and pseudo XDG directories
export XDG_BIN_HOME="${HOME}/.local/bin"

# Include alias definitions
include "aliases/ls"
include "aliases/mkdir"
include "aliases/cd"

# Add scripts to PATH, its tools may be accessed after this
path_add "scripts"

# Add pfetch to PATH
path_add "pfetch"

# Set editor commands.
export VISUAL="$(command -v vim 2>/dev/null)"
export EDITOR="$(command -v vi  2>/dev/null)"

# Set PAGER to prevent use of more(1)
export PAGER=less

# Set KSHRC to provide ksh/mksh specific settings
export KSHRC="${XDG_CONFIG_HOME}/ksh/kshrc"

# Set SHRC to provide POSIX generic shell settings
export SHRC="${XDG_CONFIG_HOME}/sh/shrc"

# Set ENV to provide session specific settings
export ENV="${SHRC}"

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

# Set Golang environment
export GOROOT="/usr/local/go"
export GOBIN="${XDG_BIN_HOME}/go/bin"
export GOPATH="${XDG_BIN_HOME}/go:${HOME}/going-gophers:${HOME}/bfk"

# Add go lang tools to PATH
path_add "${GOROOT}/bin"
path_add "${GOBIN}"

# Add OS specific scripts to PATH
path_add "$(uname | tr '[:upper:]' '[:lower:]')"

# Set X11 init script
export XINITRC="${XDG_CONFIG_HOME}/X11/xinitrc"

# Make vim respect XDG_CONFIG_DIR
export VIMINIT="set nocp | source ${XDG_CONFIG_HOME}/vim/vimrc"

# Hide .lesshist in XDG_CACHE_HOME
export LESSKEY="${XDG_CONFIG_HOME}/less.key"
export LESSHISTFILE="${XDG_CACHE_HOME}/less.history"

# Move wgetrc to XDG_CONFIG
export WGETRC="$XDG_CONFIG_HOME/wget/config"

# Startup ssh-agent(1)
if [ -z "$SSH_AUTH_SOCK" ]
then
	eval "$(ssh-agent -s)" >/dev/null 2>&1
fi

