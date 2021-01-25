#
# Build makefile for dotfiles
#
# Must be first non-comment
.POSIX:

include config.mk

test: build test_linters

build: ${BIN}

clean:
	rm -rf ${BIN} lib/shellcheck

test_linters: test_vimlint test_shellcheck

test_vimlint: ${VIMLINT}
	${VIMLINT} ../.vimrc
	${VIMLINT} ../.exrc

test_shellcheck: ${SHELLCHECK}
	${SHELLCHECK} ../.profile          -e SC1090,SC2155
	${SHELLCHECK} ../.kshrc
	${SHELLCHECK} ../.aliases
	${SHELLCHECK} ../.xinitrc          -e SC1090
	${SHELLCHECK} ../.xsession         -e SC1090
	${SHELLCHECK} ../.pfetchrc         -e SC2034
	${SHELLCHECK} ../.bin/openbsd/doas

${VIMLINT}: lib/vimlint
	echo "#!/bin/sh" > $@
	echo './lib/vimlint/bin/vimlint.sh -l ./lib/vimlint -p ./lib/vimlparser -v $$@' >> $@
	chmod +x $@

lib/vimlint: lib/vimlparser
	git submodule update --remote $@

lib/vimlparser:
	git submodule update --remote $@

${SHELLCHECK}: lib/shellcheck
	cp ./lib/shellcheck/shellcheck-${SHELLCHECK_VERSION}/shellcheck $@
	chmod +x $@
	$@ --version

lib/shellcheck:
	mkdir -p $@
	curl -L -o - ${SHELLCHECK_RELEASE} | xzcat - | tar -xvf - -C $@
	@if [ "$$(uname)" = "OpenBSD" ] ; \
	then \
		if [ -x "$$(command -v shellcheck)" ] ; \
		then \
			cp "$$(command -v shellcheck)" $@/shellcheck-${SHELLCHECK_VERSION}/shellcheck; \
		else \
			echo "Install shellcheck manually on OpenBSD" 1>&2; \
			doas pkg_add shellcheck ; \
		fi ; \
	fi

.PHONY: clean build test test_linters test_vimlint test_shellcheck

