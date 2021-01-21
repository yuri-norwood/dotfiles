#
# Configuration for dotfiles builds and tests
#

VIMLINT = bin/vimlint

BIN = ${VIMLINT}
LIB = ${BIN:bin/%=lib/%} lib/vimlparser

