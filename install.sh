#!/usr/bin/env zsh

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install packages
brew install \
  coreutils \
  cmatrix \
  findutils \
  git \
  gh \
  duti \
  vim \
  neovim \
  tmux \
  bluesnooze \
  tree \
  duti \
  fzf \
  romkatv/powerlevel10k/powerlevel10k \
  trash \
  wget \
  zoxide \
  zsh-autosuggestions \
  zsh-syntax-highlighting

# Install casks
brew install --cask \
  android-studio \
  asana \
  bartender \
  caffeine \
  docker \
  figma \
  google-chrome \
  height \
  istat-menus \
  iterm2 \
  linear-linear \
  omnidisksweeper \
  postman \
  slack \
  spotify \
  tableplus \
  vlc

# Install global `npm` packages
npm install --global \
  mintlify \
  yarn

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
