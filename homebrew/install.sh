# Check Homebrew
# Install if we don't have it

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSl https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update homebrew recipes
brew update

brew cleanup

# homebrew-cask
echo "Installing homebrew-cask..."
brew tap caskroom/cask
brew tap homebrew/cask

# homebrew-cask-fonts
echo "Installing homebrew-cask-fonts..."
brew tap homebrew/cask-fonts

brew cleanup