#
# Configuration for dotfiles builds and tests
#

VIMLINT = bin/vimlint

SHELLCHECK = bin/shellcheck

SHELLCHECK_VERSION = latest
SHELLCHECK_GIT_URL = https://github.com/koalaman/shellcheck
SHELLCHECK_RELEASE = ${SHELLCHECK_GIT_URL}/releases/download/${SHELLCHECK_VERSION}/shellcheck-${SHELLCHECK_VERSION}.linux.x86_64.tar.xz

BIN = ${VIMLINT} ${SHELLCHECK}
LIB = ${BIN:bin/%=lib/%} lib/vimlparser

TESTS = vimlint shellcheck

