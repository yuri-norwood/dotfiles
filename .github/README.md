# dotfiles
[![Build Status](https://travis-ci.com/yuri-norwood/dotfiles.svg?branch=main)](https://travis-ci.com/yuri-norwood/dotfiles)
[![License](https://img.shields.io/badge/License-Unlicense-blue)](LICENSE)
[![Top Language](https://img.shields.io/github/languages/top/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![GitHub repo size](https://img.shields.io/github/repo-size/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![GitHub code size](https://img.shields.io/github/languages/code-size/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/w/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)
[![GitHub last commit](https://img.shields.io/github/last-commit/yuri-norwood/dotfiles)](https://github.com/yuri-norwood/dotfiles)

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

