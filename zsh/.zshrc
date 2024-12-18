#!/usr/bin/env zsh

# Enable extended history and append to the history file
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history
setopt hist_ignore_dups
setopt hist_ignore_space


# Tells Homebrew where it is installed
HOMEBREW_PREFIX="/opt/homebrew"


# **
# Setup Pure theme - installed via Homebrew.
# https://github.com/sindresorhus/pure
# **

fpath+=("$HOMEBREW_PREFIX/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure


# Enable autocompletions
fpath+=("$HOMEBREW_PREFIX/share/zsh/zsh-completions")

# Enable fuzzy completion
autoload -U compinit
compinit

# Enable fuzzy matching for tab completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'm:{A-Z}={a-z}' 'r:|[._-]=*' 'm:{a-zA-Z}={a-zA-Z}'

# This is for better handling of tab completion matches
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


# Load shell aliases
source ~/.aliases


# **
# Exports
# **

# Tell shell to treat `_-.` as word chars
export WORDCHARS="_-."

export HOMEBREW_PREFIX

# Directory where Homebrew stores the installed packages
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"

# Directory where Homebrew’s source code repository is stored
export HOMEBREW_REPOSITORY="/opt/homebrew"

# Specify where Homebrew keeps info pages (documentation)
export INFOPATH="/opt/homebrew/share/info:$INFOPATH"

# Location of `nvm` installation
export NVM_DIR="$HOME/.config/nvm"

# Path to the Android SDK installation directory
export ANDROID_HOME="$HOME/Library/Android/sdk"

# Tell system where to look for installed binaries/software/tools
export PATH="$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$HOME/.jenv/bin:/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"


# **
# jenv setup - installed via Homebrew.
# https://www.jenv.be/
# `$HOME/.jenv/bin` must be added to the PATH
# **
eval "$(jenv init -)"


# **
# rbenv setup - installed via Homebrew.
# **
eval "$(rbenv init - zsh)"


# **
# nvm setup - installed manually.
# **
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Allways keep this at the bottom for plugins to work properly
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
