#
# Build makefile for dotfiles
#
# Must be first non-comment
.POSIX:

include config.mk

test: build test_linters

build: ${BIN}

clean:
	rm -rf ${BIN}

test_linters: test_vimlint test_shellcheck

test_vimlint: ${VIMLINT}
	${VIMLINT} ../.vimrc

test_shellcheck: ${SHELLCHECK}
	${SHELLCHECK} ../.profile
	${SHELLCHECK} ../.kshrc
	${SHELLCHECK} ../.aliases
	${SHELLCHECK} ../.xinitrc
	${SHELLCHECK} ../.xsession
	${SHELLCHECK} ../.pfetchrc -e SC2034

${VIMLINT}: bin/% : lib/%
	echo "#!/bin/sh" > $@
	echo './$</bin/vimlint.sh -l ./$< -p ./lib/vimlparser -v $$@' >> $@
	chmod +x $@

lib/vimlint: lib/vimlparser
	git submodule update --remote $@

lib/vimlparser:
	git submodule update --remote $@

${SHELLCHECK}: bin/% : lib/%
	cp $</shellcheck-latest/shellcheck $@
	chmod +x $@
	$@ --version

lib/shellcheck:
	mkdir -p $@
	wget -qO- ${SHELLCHECK_RELEASE} | tar -xJvC $@

.PHONY: clean build test test_linters test_vimlint test_shellcheck

