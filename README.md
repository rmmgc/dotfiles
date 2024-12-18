# Dotfiles

At some point, probably everyone needs a place for their `dotfiles`, here are mine.

**Dotfiles** are a common way to personalize your system, ensuring consistent and predictable results every time - in theory.

**WIP: Experimental use on your own risk!**

Compared to [other dotfiles](https://dotfiles.github.io/) that I saw, this setup is quite simple. Best way to check whats included is to explore it on your own. This setup heavily relies on [Homebrew](https://brew.sh/).

## Iterm2

I like to use [Iterm2](https://iterm2.com/) as terminal emulator. I did not have a need to change it over time. In `iterm2` dir you can find some defaults that I like to set and export of my iterm2 profile.

## Mac defaults

As I am using MacBook as my daily development device, there is `macos` dir that holds `system.sh` script. This script can be run to automatically set some defaults that I find very usefull.

Without the script, this config would have to be added via UI interace of different built-in apps which is time consuming process.

## Vscode files

[Visual Studio Code](https://code.visualstudio.com/) is my to go editor and to make it the way I like, there are some files that have to be shared. I keep them in `vscode` dir. 

In there you can find following:
- `extensions.txt` - holds vscode extensions.
- `keybindings.json` - vscode keybindings.
- `settings.json` - vscode editor settings.

In this setup, `keybindings.json` and `settings.json` will be symlinked to the correct location and `extensions.txt` is used to autoinstall vscode extensions.

## Zsh setup

I use [Zsh](https://www.zsh.org/) as my default shell. All Zsh realted configuration can be found in `zsh` dir.
- `.aliases` - keeps common aliases. This is sourced in `.zshrc` file.
- `.zshenv` - things that are is always sourced.
- `.zshrc` - things for new interactive, non-login shell.

## Homebrew

I use Homebrew to install *almost* all mac dependencies, from CLI tools, binaries to whole applications. To head start and automate installation of necessary dependencies `brew.sh` script is used.

The script will also install `brew` on your system, if it does not exist already.

## Bootstrap*

***Still in experimental phase**

In theory, `bootstrap.sh` can take care of all the things needed to properly setup and sync content from this dotfiles on your machine.

This is still kinda in *experimental phase* as I runned it only a couple of times before. I think there are still things left to do here.
