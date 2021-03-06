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

### VS Code

#### Global configuration
##### settings
Settings that are common to all VS Code projects, regardless of the languages or settings used in the source code, should be saved as `User settings`. These can be modified using the settings editor GUI or by editing the `settings.json` file, both which can be accessed from the VS Code command palette. To open the command palette press `command + shift + P`. Then to open these settings editor methods type `Preferences: Open Settings`. Select the option with `(UI)` to open the GUI editor or select the option with `(JSON)` to open the `settings.json` file.

The global settings file is stored at the following location on MacOS: `$HOME/Library/Application\ Support/Code/User/settings.json`.

##### extensions
Global extensions, like settings, are extensions that are be used by all workspaces regardless of the languages or dependencies used in the project. You can manage global extensions using the extensions icon in the menu on the left-hand side.

##### remote storage
Global user settings and extensions are managed using the Settings Sync.

#### Workspace configuration
##### settings
Projects can use different settings depending on conventions, languages, tools, dependencies, etc., etc. Workspace settings can be placed in the .vscode/settings.json file located in the root of a project.

##### extensions
Project specific extensions can be added to the project workspace settings as recommended extensions. Run the `Extensions: Configure Recommended Extensions (Workspace Folder)` to create a new file `.vscode/extensions.json` with empty `"recommendations"` and `"unwantedRecommendations`" array blocks. The easiest way to add extensions to the list of workspace recommendations is to use the `Extensions` management GUI, accessed from the left-hand side menu. Search for the extensions you want to install, click on them, then click on the menu gear icon, and finally select `Add to Workspace Recommendations`. 

In each project you can choose to install the recommended extensions. To keep workspaces clean you can choose to install the extension without syncing. You can also add unwanted extensions using the `"unwantedRecommendations"` key in the `.vscode/extensions.json` file that can help you identify extensions that are not needed for the project and might have been installed for a different project. You can right click on those extensions and select `Disable (Workspace)`.

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
brew bundle dump --force --file ./homebrew/Brewfile
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