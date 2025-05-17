# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi



#############
#  Plugins  #
#############


plugins=(
	git 
	gitfast
)



###############
#  Commands   #
###############

# Kill port function.
findandkill() {
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  if [ -n "$port" ]; then
    kill -9 "$port"
    echo "Killed process $port"
  else
    echo "No process found on port $1"
  fi
}

#############
#  Aliases  #
#############

# dev
alias code='cursor'
alias dev='cd ~/dev'
alias ozdv='cd ~/dev/ozdv.me'
alias ccat='cd ~/dev/iCatholic && cursor .'
alias zshconfig="cursor ~/.zshrc"

# Upgrades all brew packages.
alias bubu='brew update && brew outdated && brew upgrade && brew cleanup'


# Work
alias quickly='cd ~/dev/quickly'
alias cqfe='cd ~/dev/quickly/quickly-fe && cursor .'
alias qfe='cd ~/dev/quickly/quickly-fe'
alias cqbe='cd ~/dev/quickly/quickly-sls && cursor .'
alias qbe='cd ~/dev/quickly/quickly-sls'
alias qtest='cd ~/dev/quickly/quickly-tests'
alias cqtest='cd ~/dev/quickly/quickly-tests && cursor .'

# Github
alias dp='git checkout develop && git pull'
alias mp='git checkout main && git pull'
alias dm='git fetch origin develop && git merge origin/develop'
alias mm='git fetch origin main && git merge origin/main'
alias pr='gh pr create --base develop --reviewer bkoch31,hrishi-quickly,marvinhosea,ewanmay'
alias hf='gh pr create --base main --reviewer bkoch31,hrishi-quickly,marvinhosea,ewanmay'

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

# pnpm
alias p='pnpm'
alias d='pnpm dev'
alias j='pnpm jest'
alias t='pnpm ts-node --transpileOnly'
alias pi='pnpm install'
alias pt='pnpm test'
alias pl='pnpm lint'
alias pup='pnpm update --interactive --recursive'




#############
#  Exports  #
#############

export ZSH="$HOME/.oh-my-zsh"

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




###########
#  Shell  #
###########

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# For iTerm/zsh redo and kill line 
bindkey "^X\x7f" backward-kill-line
bindkey "^X^_" redo

# For auto-updating w/o being prompted
DISABLE_UPDATE_PROMPT=true

# zsh-autosuggestions - must be at the end of .zshrc
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting - must be at the end of .zshrc
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/powerlevel10k/powerlevel10k.zsh-theme

# pnpm
export PNPM_HOME="/Users/oz/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

