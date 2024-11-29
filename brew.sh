#!/usr/bin/env bash


# ---
# Homebrew setup
# This script manages installation `brew` and commonly used command-line tools and applications managed by `brew`.
# ---


# Check for Homebrew and install it if missing
# This is official installer from the website: https://brew.sh/
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  eval "$(/opt/homebrew/bin/brew shellenv)"
fi


# Make sure Homebrew is on latest version
brew update

# Upgrade any already installed formulae.
brew upgrade

# Install GNU stow
brew install stow

# VS code
brew install --cask visual-studio-code

# Windows like window switched
brew install --cask alt-tab

# Docker - container things
brew install --cask docker

# FiraCode - font
brew install --cask font-fira-code

# Google Chrome
brew install --cask google-chrome

# Maccy - clipboard manager
brew install --cask maccy

# iterm2 - terminal emulator
brew install --cask iterm2

# Remove outdated versions from the cellar.
brew cleanup
