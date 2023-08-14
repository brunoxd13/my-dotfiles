#!/usr/bin/env bash

brew_cask_apps=(
    # android-studio
    # github
    google-chrome
    # google-backup-and-sync
    itsycal
    # skype
    slack
    spotify
    # the-unarchiver
    transmission
    visual-studio-code
    vlc
    # alfred
    pycharm-ce
    onedrive
    docker
    sublime-text
    # reactotron
    # vanilla
    dozer
    notion
    macmediakeyforwarder
    # cheatsheet
    insomnia
    # spotmenu
    # brave-browser
    tunnelblick
    # ngrok
    # dash
    muzzle
    authy
    # cloudapp
    # https://raw.githubusercontent.com/Mortennn/FiScript/master/fiscript.rb
    keka
    brooklyn
    # caprine
    # shifty
    mark-text
    # asciinema
    fork
    iterm2
    discord
    whatsapp
    zoom
    telegram-desktop
    ocenaudio
    stats
    # querypie
    # goland
    # lastpass
    lens
    raycast
    # chef-workstation
    fig
    cron
    keybase
    # opera-gx
    # steam
    alt-tab
    warp
    obs
    logi-options-plus
)

brew_apps=(
    # tokei
    noisebuddy
    m-cli
    shpotify
    ffsend
    mas
    nvm
    node
    golang
    elixir
    rust
    yarn
    zsh
    zsh-completions
    zsh-autosuggestions
    telnet
    bat
    # terraform
    # tfenv
    ansible
    kubectl
    awscli
    watch
    minikube
    aws-iam-authenticator
    # terragrunt
    # terraform-docs
    # tflint
    # tfsec
    asdf
    checkov
    cookiecutter
    rectangle
    jq
    vault
    agrinman/tap/tunnelto
    bash
    gnu-sed
    grep
    vim
    bitwarden-cli
    romkatv/powerlevel10k/powerlevel10k
    fzf
)

brew_cask_fonts=(
    font-fira-code
    font-meslo-for-powerline
    font-meslo-lg
    font-ibm-plex
    font-meslo-lg-nerd-font
)

mas_apps=(
    # 409203825 # Numbers
    # 497799835 # Xcode
    # 1278508951 # Trello
    # 526298438 # Lightshot Screenshot
    # 1510445899 # Meeter for Zoom, Teams & Co
    409201541 #Pages
    409183694 #Keynote
    937984704 #Amphetamine
    595191960 #CopyClip - Clipboard History
    1284863847 #Unsplash Wallpapers
    1429033973 #RunCat
    1355679052 # Dropover - Easier Drag & Drop
    1563735522 # Charmstone (0.12)
    1176895641 # Spark - Email App da Readdle
    1487937127 # Craft - Docs and Notes Editor

)

asdf_apps=(
    terraform
    terraform-docs
    terraform-validator
    terragrunt
    tflint
    tfsec
    shellcheck
)

echo "Installing brew apps..."
brew install "${brew_apps[@]}"

echo "Installing some brew cask apps..."
brew install --cask "${brew_cask_apps[@]}"

echo "Installing some brew cask fonts..."
brew install --cask "${brew_cask_fonts[@]}"

echo "Installing some asdf apps..."
# asdf plugin-add "${asdf_apps[@]}"

brew cleanup

echo "Installing mac applications..."
mas install "${mas_apps[@]}"

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s "$(which zsh)"

$"(brew --prefix)"/opt/fzf/install


echo "It's done!"
