#!/usr/bin/env bash

# Install command-line tools using Homebrew.
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils


# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# brew install vim --with-override-system-vi

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install git
brew install vim
brew install neovim
brew install tmux
brew install tree

# Install Casks/Desktop Apps
brew install --cask iterm2
brew install --cask google-chrome
brew install --cask rectangle
brew install --cask caffeine
brew install --cask rectangle
brew install --cask caffeine
brew install --cask vs code
brew install --cask iterm2
brew install --cask bartender
brew install --cask vlc
brew install --cask figma
brew install --cask slack
brew install --cask spotify


# Remove outdated versions from the cellar.
brew cleanup
