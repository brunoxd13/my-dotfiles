# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# P10K - Load
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

#### ENV VARIABLES ####
export ZSH=$HOME/.oh-my-zsh

export GPG_TTY=$(tty)

# Default grep set to gnu grep
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"

export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/.config/yarn/global/node_modules/.bin"
export PATH="$PATH:`python3 -m site --user-base`/bin"

# Golang env vars
# export GOPATH=$HOME/go
# export PATH=$PATH:$GOPATH/bin
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOROOT/bin
# export GO111MODULE=off
# export GOROOT="$(brew --prefix golang)/libexec"

# NVM Configs
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /usr/local/bin/vault vault

. /opt/homebrew/opt/asdf/libexec/asdf.sh


#######################

plugins=(
    asdf
    # zsh-prompt-benchmark
    git
    node
    npm
    macos
    kubectl
    aws
    asdf 
    virtualenv 
    # virtualenvwrapper
    # ssh-agent
)

source $ZSH/oh-my-zsh.sh
export UPDATE_ZSH_DAYS=1
export ENABLE_CORRECTION="false"
export COMPLETION_WAITING_DOTS="true"

# On MacM1 use roseta to run terraform and hashicorp tools with asdf
# Ref: https://github.com/asdf-community/asdf-hashicorp/issues/34
export ASDF_HASHICORP_OVERWRITE_ARCH=amd64

# Add support to clone images based on AMD64 on Mac M1
export DOCKER_DEFAULT_PLATFORM=linux/x86_64/v8

##########################################################

function mkd() {
    mkdir -p "$@" && cd "$@"
}

function i-login() {
    ifood-aws-login -r ifood-"$@":Administrator_Access
}

function ifood-login() {
    ifood-aws-login -r "$@":Administrator_Access
}

###########
# ALIASES #
###########

# Easier navigation: .., ..., ...., .....
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias cls="clear"

# Shortcuts
alias home="cd ~/"
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias g="git"
alias stash="git stash"
alias pop="git stash pop"
alias stt="git status"
alias n="npm"
alias ns="npm run start"
alias y="yarn"
alias add="yarn add "
alias ys="yarn start"
alias rm-node="rm -rf node_modules && rm -rf package-lock.json && rm -rf yarn.lock"
alias reinstall="rm-node && yarn install"
alias ip="netstat -rn | grep default"
alias ssh-config="code ~/.ssh"
alias tf="terraform"
alias tg="terragrunt"

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Show/hide hidden files in Finder
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Disable Spotlight
alias spotoff="sudo mdutil -a -i off"
# Enable Spotlight
alias spoton="sudo mdutil -a -i on"

# Kill all the tabs in Chrome to free up memory
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

alias work-profile="open -a 'Google Chrome' --args --make-default-browser && git config --global user.name 'Bruno Russi Lautenschlager' && git config --global user.email blautens@redhat.com"
alias home-profile="open -a 'Opera GX' --args --make-default-browser && git config --global user.name 'Bruno Russi Lautenschlager' && git config --global user.email brunoxd13@gmail.com"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias lock="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Alias for https://termbin.com/
alias tb="nc termbin.com 9999"




### Added by Zinit's installer
# if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
#     print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
#     command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
#     command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
#         print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
#         print -P "%F{160}▓▒░ The clone has failed.%f%b"
# fi

# source "$HOME/.zinit/bin/zinit.zsh"
# autoload -Uz _zinit
# (( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
# zinit light-mode for \
#     zinit-zsh/z-a-as-monitor \
#     zinit-zsh/z-a-patch-dl \
#     zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

# zplugin light zsh-users/zsh-autosuggestions
# zplugin light zsh-users/zsh-completions
# zplugin light zdharma/fast-syntax-highlighting
# zplugin ice depth=1; zplugin light romkatv/powerlevel10k

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
export PATH=/Users/bruno.lautenschlager/Library/Python/3.11/bin:${PATH}

