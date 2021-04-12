<!-- markdownlint-disable MD033 -->

# dotfiles

[![Vim](https://img.shields.io/badge/--019733?logo=vim)](../.config/vim)
[![OpenBSD](https://img.shields.io/badge/--F2CA30?logo=openbsd&logoColor=000000)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Aopenbsd)
[![Suckless](https://img.shields.io/badge/--1177AA?logo=suckless)](../.local/share/suckless)
[![dwm](https://img.shields.io/badge/--1177AA?logo=dwm)](../.local/share/suckless/dwm)
[![git](https://img.shields.io/badge/--F05032?logo=git&logoColor=ffffff)](../.config/git)
[![x11](https://img.shields.io/badge/--F28834?logo=x.org&logoColor=ffffff)](../.config/X11)
[![Visual Studio](https://img.shields.io/badge/--6C33AF?logo=visual%20studio)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3A%22visual+studio%22)
[![Go](https://img.shields.io/badge/--00ADD8?logo=go&logoColor=ffffff)](https://github.com/yuri-norwood/dotfiles/issues?q=label%3Ago)
[![Sponsors](https://img.shields.io/badge/--EA4AAA?logo=github-sponsors&logoColor=ffffff)](https://github.com/sponsors/yuri-norwood)
[![Build](https://img.shields.io/badge/--success?logo=github-actions&logoColor=ffffff)](https://github.com/yuri-norwood/dotfiles/actions?query=workflow%3Alinting)
[![License](https://img.shields.io/badge/--blue?logo=creative-commons&logoColor=ffffff)](LICENSE)

Configuration files and various customizations.

## Installation

This repo is designed to be installed directly into a user's `$HOME` directory,
this can be done using git:

<details>
<summary>
Clone with SSH
</summary>

```sh
cd "$HOME"
git init
git remote add origin git@github.com:yuri-norwood/dotfiles.git
git fetch
git checkout origin/main -ft
git submodule update --init --recursive
```

</details>

<details>
<summary>
Clone with HTTPS
</summary>

```sh
cd "$HOME"
git init
git remote add origin https://github.com/yuri-norwood/dotfiles.git
git fetch
git checkout origin/main -ft
git submodule update --init --recursive
```

</details>

Alternatively, if you don't want to overwrite any existing files, or just want
to use a specific subset, you may clone into another directory and copy or
symlink the desired files:

<details>
<summary>
Clone with SSH
</summary>

```sh
cd "$HOME"
git clone git@github.com:yuri-norwood/dotfiles.git ~/.dotfiles
ln -sf ~/.dotfiles/.config/vim/vimrc ~/.vimrc
```

</details>

<details>
<summary>
Clone with HTTPS
</summary>

```sh
cd "$HOME"
git clone https://github.com/yuri-norwood/dotfiles.git ~/.dotfiles
ln -sf ~/.dotfiles/.config/vim/vimrc ~/.vimrc
```

</details>

<details>
<summary>
To update your local copy, just pull the repo as you would normally.
</summary>

```sh
cd "$HOME"
git pull
```

</details>

<details>
<summary>
To update the submodules, recursively update all the submodules and commit the
update.
</summary>

```sh
cd "$HOME"
git submodule foreach --recursive git pull origin master
git commit -am "Updated submodules"
```

</details>

## Contributing

Usually, dotfiles are very personal and specific to the author, however, I
try to keep my dotfiles as a general framework that can be used for anyone's
configuration. If you have a question or suggestion, feel free to open a PR.

[Just don't be a dick.](CODE_OF_CONDUCT)

## License

You can tell a lot about a hacker by their `.profile`, if you see something you
like, please help yourself :)

See [LICENSE](LICENSE) for terms.
