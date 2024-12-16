# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git 
	gitfast
)

source $ZSH/oh-my-zsh.sh

# For zoxide
eval "$(zoxide init zsh)"

#################### Commands ####################

# Kill port function. Set alias later down
findandkill() {
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  if [ -n "$port" ]; then
    kill -9 "$port"
    echo "Killed process $port"
  else
    echo "No process found on port $1"
  fi
}

#################### Aliases ####################
# For a full list of active aliases, run `alias`.
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.

# dev:
alias dev='cd ~/dev'
alias ozdv='cd ~/dev/ozdv.me'
alias ccat='cd ~/dev/iCatholic && code .'
alias zshconfig="code ~/.zshrc"

# Work:
alias quickly='cd ~/dev/quickly'
alias cqfe='cd ~/dev/quickly/quickly-fe && code .'
alias qfe='cd ~/dev/quickly/quickly-fe'
alias cqbe='cd ~/dev/quickly/quickly-sls && code .'
alias qbe='cd ~/dev/quickly/quickly-sls'
alias qtest='cd ~/dev/quickly/quickly-tests'
alias cqtest='cd ~/dev/quickly/quickly-tests && code .'

# Github
alias dp='git checkout develop && git pull'
alias mp='git checkout main && git pull'
alias dm='git fetch origin develop && git merge origin/develop'
alias mm='git fetch origin main && git merge origin/main'
alias pr='gh pr create --base develop --reviewer bkoch31,tim-helloquickly'
alias hf='gh pr create --base main --reviewer bkoch31,tim-helloquickly'


# Command shortcuts
alias ..='cd ..'
alias l='ls -a'

# Apps
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Show/hide hidden files in Finder
alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# Lock the screen (when going AFK)
alias afk="osascript -e 'tell app \"System Events\" to key code 12 using {control down, command down}'"

# Print each PATH entry on a separate line
alias path='echo -e ${PATH//:/\\n}'
alias fpath='echo -e ${FPATH//:/\\n}'

# Kills specific port i.e. killport 3000
alias killport=findandkill

# For iTerm/zsh redo and kill line 
bindkey "^X\x7f" backward-kill-line
bindkey "^X^_" redo

# For auto-updating w/o being prompted
DISABLE_UPDATE_PROMPT=true

# For Node 20
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# For Homebrew
export PATH="/opt/homebrew/bin:$PATH"

# For Android SDK emulator
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools

# For JDK for Android
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home

# For NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completio

# zsh-autosuggestions - must be at the end of .zshrc
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting - must be at the end of .zshrc
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh