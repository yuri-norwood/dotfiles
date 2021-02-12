# dotfiles

[![Vim](https://img.shields.io/github/labels/yuri-norwood/dotfiles/vim?logo=vim)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Avim)
[![OpenBSD](https://img.shields.io/github/labels/yuri-norwood/dotfiles/openbsd?logo=openbsd&logoColor=000)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Aopenbsd)
[![Suckless](https://img.shields.io/github/labels/yuri-norwood/dotfiles/suckless?logo=suckless)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Asuckless)
[![dwm](https://img.shields.io/github/labels/yuri-norwood/dotfiles/dwm?logo=dwm)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Adwm)
[![git](https://img.shields.io/github/labels/yuri-norwood/dotfiles/git?logo=git&logoColor=ffffff)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Agit)
[![x11](https://img.shields.io/github/labels/yuri-norwood/dotfiles/x11?logo=x.org&logoColor=ffffff)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Ax11)
[![Visual Studio](https://img.shields.io/github/labels/yuri-norwood/dotfiles/visual%20studio?logo=visual%20studio)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3A%22visual+studio%22)
[![Sponsors](https://img.shields.io/badge/-sponsor-ea4aaa?logo=github-sponsors&logoColor=ffffff)](https://github.com/sponsors/yuri-norwood)
[![Build](https://img.shields.io/github/workflow/status/yuri-norwood/dotfiles/linting?logo=github-actions&logoColor=ffffff&label)](https://github.com/yuri-norwood/dotfiles/actions?query=workflow%3Alinting)
[![License](https://img.shields.io/badge/-Unlicense-blue)](LICENSE)

Configuration files and various customizations.

## Stats

[![Metrics](https://raw.githubusercontent.com/yuri-norwood/yuri-norwood/main/.github/dotfiles-metrics.svg)](https://github.com/yuri-norwood/dotfiles)

## Installation

This repo is designed to be installed directly into a user's `$HOME` directory,
this can be done using git:

```sh
cd "$HOME"
git init
git remote add origin https://github.com/yuri-norwood/dotfiles.git
git fetch
git checkout origin/main -ft
git submodule update --init --recursive
```

Alternatively, if you don't want to overwrite any existing files, or just want
to use a specific subset, you may clone into another directory and copy or
symlink the desired files:

```sh
cd "$HOME"
git clone https://github.com/yuri-norwood/dotfiles.git ~/.dotfiles
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
```

To update your local copy, just pull the repo as you would normally.

```sh
cd "$HOME"
git pull
```

To update the submodules, recursively update all the submodules and commit the
update.

```sh
cd "$HOME"
git submodule foreach --recursive git pull origin master
git commit -am "Updated submodules"
```

## License

You can tell a lot about a hacker by their `.profile`, if you see something you
like, please help yourself :)

See [LICENSE](LICENSE) for terms.
