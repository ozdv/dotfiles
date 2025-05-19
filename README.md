# dotfiles

These are the steps to reproduce my entire OS.

## Setup

```sh
sh ./install.sh
```

## MacOS

```sh
sh ./macos.sh
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

## Note

Here's a list of [casks](https://formulae.brew.sh/cask/).

Note: Double check that all casks will install appropriately (some may try and install intel based despite being on apple's chips)

```sh
sudo chmod u+x ./casks.sh && ./casks.sh
```

## MacOS Settings

```sh
sudo chmod u+x ./macos.sh && ./macos.sh
```

## iTerm2 Settings



## ZSH
```sh
cp .zshrc ~/.zshrc && source ~/.zshrc
```

### Oh-my-zsh:
Install:
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


## Cursor

```sh
chmod +x install-extensions.sh && ./install-extensions.sh
```