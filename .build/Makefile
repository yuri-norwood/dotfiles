#
# Build makefile for dotfiles
#
# Must be first non-comment
.POSIX:

include config.mk

test: build
	${VIMLINT} ../.vimrc

build: ${BIN}

clean:
	rm -rf ${BIN}

${VIMLINT}: bin/% : lib/%/bin/vimlint.sh
	echo "#!/bin/sh" > $@
	echo './$< -l ./lib/vimlint -p ./lib/vimlparser -v $$@' >> $@
	chmod +x $@

lib/vimlint: lib/vimlparser
	git submodule update --remote lib/$@

lib/vimlparser:
	git submodule update --remote lib/$@

.PHONY: clean build test

