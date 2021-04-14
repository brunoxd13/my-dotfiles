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
    alfred
    spectacle
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
    homebrew/cask-drivers/logitech-options
    zoom
    telegram-desktop
    ocenaudio
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
    terragrunt
    terraform-docs
    tflint
    tfsec
    asdf
    checkov
    cookiecutter
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
    # 409203825
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
    #Unsplash Wallpapers
    1284863847
    #RunCat
    1429033973  
)

echo "Installing brew apps..."
brew install ${brew_apps[@]}

echo "Installing some brew cask apps..."
brew install --cask ${brew_cask_apps[@]}

echo "Installing some brew cask fonts..."
brew install --cask ${brew_cask_fonts[@]}

brew cleanup

echo "Installing mac applications..."
mas install ${mas_apps[@]}

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zplugin/master/doc/install.sh)"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

echo "It's done!"
