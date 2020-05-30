brew_cask_apps=(
    # android-studio
    # github
    google-chrome
    google-backup-and-sync
    itsycal
    # skype
    slack
    spotify
    # the-unarchiver
    transmission
    visual-studio-code
    vlc
    alfred
    spectacle
    onedrive
    docker
    sublime-text
    reactotron
    # vanilla
    dozer
    notion
    macmediakeyforwarder
    cheatsheet
    insomnia
    spotmenu
    brave-browser
    tunnelblick
    ngrok
    dash
    muzzle
    authy
    cloudapp
    https://raw.githubusercontent.com/Mortennn/FiScript/master/fiscript.rb
    keka
    brooklyn
    # caprine
    # shifty
    mark-text
    asciinema
    fork
    iterm2
)

brew_apps=(
    # tokei 
    # m-cli
    # shpotify
    ffsend
    mas
    nvm
    node
    yarn
    zsh
    zsh-completions
    zsh-autosuggestions
    ansible
    kubectl
    terraform
    awscli
    watch
    minikube
    aws-iam-authenticator
    telnet
    bat
)

brew_cask_fonts=(
    font-fira-code
    font-meslo-for-powerline
    font-meslo-lg
)

mas_apps=(
    #Pages
    409201541
    #Keynote
    409183694
    #Numbers
    409203825
    #Xcode
    # 497799835
    #Trello
    # 1278508951
    #Lightshot Screenshot
    # 526298438
    #Amphetamine
    937984704
    #CopyClip - Clipboard History
    595191960
)

echo "Installing brew apps..."
brew install ${brew_apps[@]}

echo "Installing some brew cask apps..."
brew cask install ${brew_cask_apps[@]}

echo "Installing some brew cask fonts..."
brew cask install ${brew_cask_fonts[@]}

brew cleanup

echo "Installing mac applications..."
mas install ${mas_apps[@]}

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"

echo "It's done!"
