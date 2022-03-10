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

Don't forget to disable the Apple press and hold feature for VS Code only so you can hold down vim navigation keys and move multiple spaces at a time. See details [here](https://stackoverflow.com/a/44010683/10974954).
```shell
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
```

Neovim is also available and installed via the Brewfile below.

## AWS
Version 2 of the AWS cli should be installed using the instructions found [here.](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

AWS credentials can be managed using the AWS Vault tool, whcih should be installed using the `Brewfile` described below.

## Package management
The easiest way to install and manage global package installations on macOS is using Homebrew. You can install it using a script provide by Homebrew:
```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

# Configs

## editor
Configs for different text editors and IDEs.

### neovim
Copy `./editor/nvim/` into the `~/.config/` folder using the following command:
```shell
mkdir ~/.config/nvim
cp -r ./editor/nvim ~/.config/nvim
```

## fonts
The `./fonts` folder contains `.otf` font files that should be loaded into [Font Book](https://support.apple.com/guide/font-book/welcome/mac).

## homebrew
The `./homebrew` folder contains a `Brewfile` that can be used to install homebrew packages.

Run the following command to install packages using this file:
```shell
brew bundle --f ./homebrew/Brewfile
```

If changes to the homebrew configuration are made, run the following command from the dotfile project folder:
```shell
brew bundle --force --file ./homebrew/Brewfile
```

Then commit and push changes to GitHub.

## zsh
The `./zsh` folder contains zsh configuration files. These files should be saved to the home directory.

## terminal
The `./terminal` contains files for terminal emulators and prompt customization.

### xterm-256 colors and italics
To enable xterm-256color and italics in iTerm2 and tmux, follow this [post.](https://medium.com/@dubistkomisch/how-to-actually-get-italics-and-true-colour-to-work-in-iterm-tmux-vim-9ebe55ebc2be)

### tmux
The file `./terminal/.tmux.conf` configures tmux so it can display xterm 256 color schemes and italic in-session. It also configures fig to work with tmux.

### Prompt
Copy the `starship.toml` to `~/.config/starship.toml`.

### iTerm2
To install the iTerm profile, open iTerm2, then open the Preferences menu. Select the Profiles tab, click on Other Action near the bottom left, and select Import JSON Profiles. Then browse for the `iterm2_profile.json` file in this repo. To set it as the default profile, click on it then select Set as default from the Other Actions menu. Don't forget to set iTerm's appearance to Minimal to set the top bar to the terminal background colors.

## Window management
Rectangle is installed using the `Brewfile` described above. To import the shortcuts from `./window-management/RectangleConfig.json`, click on the Rectangle icon in the menu bar on the right, click on Preferences. Select the gear icon tab, select import, then browse for the rectangle configuration file.