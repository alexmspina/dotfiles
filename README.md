# dotfiles
A collection of assets, files, and installation instructions for configuring macOS.

# Installations

## git
You can quickly install git by typing git in a terminal. If it is not detected, macOS will begin downloading Xcode developer tools automatically. Once this is complete git will be installed, along with other useful developer dependencies and packages.

## Golang
Use `gvm` to manage Golang installations and versions. You can install it using the command:
```shell
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
```
This may require an initial version of Golang to be installed. You can download it [here.](https://go.dev/dl/)

## Rust
Use the following script to install Rust using `rustup`:
```shell
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

## Python
Use `pyenv` to install and manage different versions of Python. `pyenv` can be install via the `Brewfile` described below.

## Terminal
Install iTerm2. It can be found [here.](https://iterm2.com)

## Editor
Download and install Vs Code which can be found [here.](https://code.visualstudio.com)

## AWS
Version 2 of the AWS cli should be installed using the instructions found [here.](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

AWS credentials can be managed using the AWS Vault tool, whcih should be installed using the `Brewfile` described below.

## Package management
The easiest way to install and manage global package installations on macOS is using Homebrew. You can install it using a script provide by Homebrew:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Configs

## fonts
The `./fonts` folder contains `.otf` font files that should be loaded into [Font Book](https://support.apple.com/guide/font-book/welcome/mac).

## homebrew
The `./homebrew` folder contains a `Brewfile` that can be used to install homebrew packages. Create a symlink it in the home folder:
```shell
ln -s ./Brewfile ~/.Brewfile
```

Then run the following command to install packages using this file:
```shell
brew bundle --global
```

If changes to the homebrew configuration are made, run the following command from the dotfile project folder:
```shell
brew bundle --force --file ./Brewfile
```

Then commit and push changes to GitHub.

## zsh
The `./zsh` folder contains zsh configuration files. Create symlinks for all of these files in the home folder:
```shell
ln -s ./zshrc ~/.zshrc
ln -s ./zshaliases ~/.zshaliases
ln -s ./zshenv ~/.zshenv
ln -s ./zprofile ~/.zprofile
```


## terminal
The `./terminal` contains files for terminal emulators and prompt customization. First 