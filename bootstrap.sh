#!/usr/bin/env bash


# ---
# Bootstrap script.
# Run this to properly link and setup dotfiles on the machine.
# ---


# Prepare Homebrew and install brew managed dependencies
bash ./brew.sh

# Symlink required directories and files to 🏠
stow -t ~ zsh git

# Ensure the XDG directories are created
mkdir -p "$XDG_CACHE_HOME" "$XDG_CONFIG_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME" "$XDG_RUNTIME_DIR"

# Set appropriate permissions for XDG_RUNTIME_DIR
chmod 0700 "$XDG_RUNTIME_DIR"

# Allow `jenv` to set the JAVA_HOME environment variable
jenv enable-plugin export

# Add and activate Java environment via `jenv`
jenv add "$(brew --prefix openjdk@17)/libexec/openjdk.jdk/Contents/Home"
jenv global 17.0

# Install nvm - Node version manager
# TODO: Extend this step

# Symlink vscode
ln -s "$HOME/.dotfiles/vscode/settings.json" "$HOME/Library/Application Support/Code/User/settings.json"
ln -s "$HOME/.dotfiles/vscode/keybindings.json" "$HOME/Library/Application Support/Code/User/keybindings.json"

# Install vs code extensions
curl -fsSL https://raw.githubusercontent.com/rmmgc/vscode-extensions-bulk-install/main/bulk-install.sh | sh -s vscode/extensions.txt

# Set system defaults
bash ./macos/system.sh

# Set iTerm defaults
bash ./macos/iterm2.sh
