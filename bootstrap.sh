#!/usr/bin/env bash


# ---
# Bootstrap script.
# Run this to properly link and setup dotfiles on the machine.
# ---


# Prepare Homebrew
bash ./brew.sh

# Symlink required direcotries and files to 🏠
stow -t ~ zsh git

# Ensure the XDG directories are created
mkdir -p "$XDG_CACHE_HOME" "$XDG_CONFIG_HOME" "$XDG_DATA_HOME" "$XDG_STATE_HOME" "$XDG_RUNTIME_DIR"

# Set appropriate permissions for XDG_RUNTIME_DIR
chmod 0700 "$XDG_RUNTIME_DIR"

# Symlink vscode
ln -s ./vscode/settings.json "$HOME/Library/Application Support/Code/User/settings.json"
ln -s ./vscode/settings.json "$HOME/Library/Application Support/Code/User/keybindings.json"

# Set system defaults
bash ./macos/system.sh

# Set iTerm defaults
bash ./macos/iterm.sh
