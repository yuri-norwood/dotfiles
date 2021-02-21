#!/bin/ksh

#
# Korn shell configuration
#

# Catch non-ksh sessions
case "$0" in
	# Early return if the ksh(1) instance isn't interactive
	*ksh*) [[ $- = *i* ]] || return ;;

	# Early return if not run by ksh(1)
	*) return ;;
esac

# Configure history
HISTFILE="${XDG_CACHE_HOME}/history.ksh"
HISTSIZE=2048

# Use Emacs line editing for arrow and home / end keys to work
set -o emacs
alias  _A=
alias  _B=
alias  _C=
alias  _D=
alias  _H=
alias  _Y=
alias __A=
alias __B=
alias __C=
alias __D=
alias __H=
alias __Y=

# Override 'cd' command to allow partial directory names to be auto completed
cd() {
	if [ "$#" -eq 0 ] ; then
		builtin cd "${HOME}" || return 1
	else
		builtin cd    "$*"/  2> /dev/null ||
		builtin cd    "$*"*/ 2> /dev/null ||
		builtin cd ./*"$*"*/ 2> /dev/null ||
		echo "cd: $* not found" 1>&2
	fi
}

