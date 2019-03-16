# Everyone has different preferences of apps.
# This is a list of stuff I usually install

brew_cask_apps=(
    github
    gitkraken
    google-chrome
    google-backup-and-sync
    hyper
    itsycal
    skype
    slack
    spotify
    the-unarchiver
    transmission
    visual-studio-code
    vlc
)

brew_apps=(
    mas
    node
    yarn
    zsh
    zsh-completions
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
    #Xcode
    497799835
    #Numbers
    409203825
    #Unsplash Wallpapers
    1284863847
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

echo "It's done!"
