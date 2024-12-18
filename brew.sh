#!/usr/bin/env bash


# ---
# Homebrew setup
# This script manages installation of Homebrew, commonly used command-line tools, fonts and applications.
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


# **
# Binaries
# **

# Install GNU stow
brew install stow

# Shell theme
brew install pure

# Zsh syntax highlighting
brew install zsh-syntax-highlighting

# Zsh auto suggestions
brew install zsh-autosuggestions

# Zsh autocompletions
brew install zsh-completions

# Watch files and take action when they change
brew install watchman

# Java environment manager
brew install jenv

# Java Development Kit v17
brew install openjdk@17

# Xcode versions manager
brew install xcodesorg/made/xcodes

# Ruby version manager
brew install rbenv ruby-build


# **
# Fonts
# **

# FiraCode
brew install --cask font-fira-code


# **
# Applications
# **

# VS code - code editor
brew install --cask visual-studio-code

# Alt Tab - windows like window switcher
brew install --cask alt-tab

# Docker - container things
brew install --cask docker

# Google Chrome - browser
brew install --cask google-chrome

# Maccy - clipboard manager
brew install --cask maccy

# iterm2 - terminal emulator
brew install --cask iterm2

# Rectangle - window resize
brew install --cask rectangle

# Notion - write, plan and organize
brew install --cask notion

# Android Stuido - Android development environment
brew install --cask android-studio

# Alfred - Open source spotlight replacement
brew install --cask alfred


# **
# Cleanup
# **

# Remove outdated versions from the cellar.
brew cleanup
