# dotfiles

Configuration files and various customizations.

## Installation

This repo is designed to be installed directly into a user's `$HOME` directory,
this can be done using git:

```sh
cd "$HOME"
git init
git remote add origin https://github.com/yuri-norwood/dotfilesa.git
git fetch
git checkout origin/main -ft
git submodules update --init --recursive
```

Alternatively, if you don't want to overwrite any existing files, or just want
to use a specific subset, you may clone into another directory and copy or
symlink the desired files:

```sh
cd "$HOME"
git clone https://github.com/yuri-norwood/dotfiles.git ~/.dotfiles
ln -sf ~/.dotfiles/.vimrc ~/.vimrc
```

## License

You can tell a lot about a hacker by their `.profile`, if you see something you
like, please help yourself :)

See [LICENSE](LICENSE) for terms.

