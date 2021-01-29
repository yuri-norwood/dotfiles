# dotfiles

[![Linters](https://github.com/yuri-norwood/dotfiles/workflows/linting/badge.svg)](https://github.com/yuri-norwood/dotfiles/actions?query=workflow%3Alinting)
[![License](https://img.shields.io/badge/License-Unlicense-blue)](LICENSE)
[![Top Language](https://img.shields.io/github/languages/top/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![Repo Size](https://img.shields.io/github/repo-size/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![Code Size](https://img.shields.io/github/languages/code-size/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![Commit Activity](https://img.shields.io/github/commit-activity/w/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![Last Commit](https://img.shields.io/github/last-commit/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![Actions](https://img.shields.io/badge/-actions-2088ff?logo=github-actions&logoColor=ffffff)](https://github.com/yuri-norwood/dotfiles/actions)
[![Sponsors](https://img.shields.io/badge/-sponsor-ea4aaa?logo=github-sponsors&logoColor=ffffff)](https://github.com/sponsors/yuri-norwood)
[![Visual Studio](https://img.shields.io/github/labels/yuri-norwood/dotfiles/visual%20studio?logo=visual%20studio)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3A%22visual+studio%22)
[![OpenBSD](https://img.shields.io/github/labels/yuri-norwood/dotfiles/openbsd?logo=openbsd&logoColor=000)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Aopenbsd)
[![Suckless](https://img.shields.io/github/labels/yuri-norwood/dotfiles/suckless?logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8IS0tIENvcHlyaWdodCAoYykgMjAxNSwgTGFzbG8gSHVuaG9sZCA8ZGV2QGZyaWduLmRlPiAtLT4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMi41IiBoZWlnaHQ9IjE1IiB2ZXJzaW9uPSIxLjEiPgo8cGF0aCBzdHlsZT0iZmlsbDojZWVlZWVlIiBkPSJtIDAsMTUgMjIuNSwwIDAsLTkuMzc1IC0xOC43NSwwIDAsLTEuODc1IDE4Ljc1LDAgMCwtMy43NSAtMjIuNSwwIDAsOS4zNzUgMTguNzUsMCAwLDEuODc1IC0xOC43NSwwIHoiIC8+Cjwvc3ZnPgo=)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Asuckless)
[![Vim](https://img.shields.io/github/labels/yuri-norwood/dotfiles/vim?logo=vim)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Avim)

Configuration files and various customizations.

## Installation

This repo is designed to be installed directly into a user's `$HOME` directory,
this can be done using git:

```sh
cd "$HOME"
git init
git remote add origin https://github.com/yuri-norwood/dotfiles.git
git fetch
git checkout origin/main -ft
git submodule update --init --recursive -j8
```

Alternatively, if you don't want to overwrite any existing files, or just want
to use a specific subset, you may clone into another directory and copy or
symlink the desired files:

```sh
cd "$HOME"
git clone --recursive -j8 https://github.com/yuri-norwood/dotfiles.git ~/.dotfiles
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
```

To update the submodules, add the `--recurse-submodules` flag when you pull your
repo.

```sh
cd "$HOME"
git pull --recurse-submodules -j8
```

## License

You can tell a lot about a hacker by their `.profile`, if you see something you
like, please help yourself :)

See [LICENSE](LICENSE) for terms.
