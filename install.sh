#!/usr/bin/env zsh

echo "========================================================================"
echo "Installing Homebrew"


/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


echo "Running Homebrew commands"


# Run these after brew is installed:
echo >> /Users/oz/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/oz/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

echo "========================================================================"
echo "Homebrew installed"
echo "Update/upgrade on Homebrew"

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade


echo "========================================================================"
echo "Packages installed"
echo "Installing Casks"


brew install coreutils \
  bluesnooze \
  cmatrix \
  duti \
  findutils \
  fzf \
  gh \
  git \
  neovim \
  node \
  nvm \
  tmux \
  tree \
  vim \
  wget \
  yarn \
  zoxide \
  zsh \
  zsh-autosuggestions \
  zsh-syntax-highlighting


echo "========================================================================"
echo "Packages installed"
echo "Installing Casks"


brew install --cask \
  android-studio \
  asana \
  bartender \
  caffeine \
  cursor \
  discord \
  docker \
  fathom \
  figma \
  google-chrome \
  iterm2 \
  league-of-legends \
  linear-linear \
  microsoft-teams \
  minecraft \
  omnidisksweeper \
  openvpn-connect \
  postman \
  rectangle \
  slack \
  spotify \
  tableplus \
  utc-menu-clock \
  vlc


echo "========================================================================"
echo "Casks installed"
echo "Installing global npm packages"



npm install --global \
  mintlify \
  yarn


echo "========================================================================"
echo "Global npm packages installed"
echo "Installing oh-my-zsh"


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "========================================================================"
echo "oh-my-zsh installed"
echo "Opening apps for initial setup..."

apps_to_open=(
  "Android Studio"
  "Asana"
  "Cursor"
  "Discord"
  "Fathom"
  "League of Legends"
  "Minecraft"
  "OmniDiskSweeper"
  "Rectangle"
  "TablePlus"
  "OpenVPN Connect"
  "Bartender"
  "Caffeine"
  "Docker"
  "Figma"
  "Google Chrome"
  "iTerm"
  "Linear"
  "Postman"
  "Slack"
  "Spotify"
  "VLC"
)

for app in "${apps_to_open[@]}"; do
  echo "Launching $app..."
  open -a "$app"
done

echo "All apps opened."
echo "========================================================================"
echo "Installation complete"
