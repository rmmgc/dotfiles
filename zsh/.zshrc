#!/usr/bin/env zsh

# Load shell aliases
source ./.aliases


# **
# Exports
# **

# Tells Homebrew where it is installed
export HOMEBREW_PREFIX="/opt/homebrew"

# Allow system to find `brew` installed executables
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"

# Directory where Homebrew stores the installed packages
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"

# Directory where Homebrew’s source code repository is stored
export HOMEBREW_REPOSITORY="/opt/homebrew"

# Specify where Homebrew keeps info pages (documentation)
export INFOPATH="/opt/homebrew/share/info:$INFOPATH"
