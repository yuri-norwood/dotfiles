# Contributing

This is a personal repo, your contributions are judged by appeal to me,
and no other metric.

## Goals

The primary goal of these dotfiles is portability. Specifically, all
configs that can hypothetically be used on OpenBSD, *must* work on OpenBSD.

* Use [XDG Base Directories](https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
  whenever possible, including when not already previously supported, e.g.

  * `pfetch(1)` - configured via [`${XDG_CONFIG_HOME}/pfetch/config`](https://github.com/yuri-norwood/dotfiles/blob/1dd9cc9c032f23e01b3365a57d58ec522727670d/.profile#L88)
  * `~/.surf` moved to [`${XDG_DATA_HOME}/suckless/surf`](https://github.com/yuri-norwood/dotfiles/blob/1dd9cc9c032f23e01b3365a57d58ec522727670d/.local/share/suckless/surf/config.h#L4)
  * etc

* All top level files and directories *must* start with a `.`, these are
  [`dotfiles`](https://github.com/yuri-norwood/dotfiles) after all.

* Shellscripts must use `#!/bin/sh` and pass shellchecks
  * `#!/bin/ksh` is acceptable *if* the script will *only* be run on
    OpenBSD.
