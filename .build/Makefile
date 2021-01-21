#
# Build makefile for dotfiles
#
# Must be first non-comment
.POSIX:

include config.mk

test: build
	${VIMLINT}    ../.vimrc
	${SHELLCHECK} ../.profile
	${SHELLCHECK} ../.kshrc
	${SHELLCHECK} ../.aliases
	${SHELLCHECK} ../.xinitrc
	${SHELLCHECK} ../.xsession

build: ${BIN}

clean:
	rm -rf ${BIN}

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

.PHONY: clean build test

