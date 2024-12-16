# dotfiles

These are the steps to reproduce my entire OS.

## Setup

1.

```sh
sh ./install.sh
```

## MacOS

To show all hidden files:

```sh
defaults write com.apple.Finder AppleShowAllFiles true && killall Finder
```

To hide last login in terminal:

```sh
touch .hushlogin
```

To install XCode:

```sh
xcode-select --install
```

## Brew Formulae

Install [brew](https://brew.sh/).

Here's a list of [casks](https://formulae.brew.sh/cask/).

Note: Double check that all casks will install appropriately (some may try and install intel based despite being on apple's chips)

## For Github

Setup auth by running this.

Select https probably.

```sh
gh auth login
```

Login for vscode:

```sh
git config --global user.name "ozdv"
git config --global user.email cam@ozdv.me
```

Make `dev` folder, and

```sh
cd ~/Dev && gh repo clone ozdv/dotfiles && cd dotfiles
```

## Brew formulae

```sh
sudo chmod u+x ./brew.sh && ./brew.sh
```

To setup locate:

```sh
sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.locate.plist
```

## Brew Casks

Here's a list of [casks](https://formulae.brew.sh/cask/).

Note: Double check that all casks will install appropriately (some may try and install intel based despite being on apple's chips)

```sh
sudo chmod u+x ./casks.sh && ./casks.sh
```

## MacOS Settings:

```sh
sudo chmod u+x ./macos.sh && ./macos.sh
```

## ITerm2 Settings:

Install oh-my-zsh:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install iTerm2 settings:

```sh
sudo chmod u+x ./iterm.sh && ./iterm.sh
```

## Todo

- Configure tmux
- Configure vim/nvim
