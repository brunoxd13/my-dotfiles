#!/usr/bin/env bash

DOTFILES_ROOT=$(pwd)

echo "=============================="
echo "Starting MACHINE configuration"
echo "=============================="

sh "$DOTFILES_ROOT/homebrew/install.sh"
sh "$DOTFILES_ROOT/homebrew/apps.sh"

echo "============================="
echo "Starting settings of dotfiles"
echo "============================="

echo "Backing up an existing .zshrc config"
# Backup an existing .zshrc if any
if [[ -f "$HOME/.zshrc" ]]; then
    mv -v "$HOME/.zshrc" "$HOME/.zshrc.bak"
fi

ln -s -F -i "$DOTFILES_ROOT/zsh/.zshrc" "$HOME/.zshrc"
echo ".zshrc file added to home"

echo "Backing up an existing .p10k.zsh config"
# Backup an existing .p10k.zsh if any
if [[ -f "$HOME/.p10k.zsh" ]]; then
    mv -v "$HOME/.p10k.zsh" "$HOME/.p10k.zsh.bak"
fi

ln -s -F -i "$DOTFILES_ROOT/zsh/.p10k.zsh" "$HOME/.p10k.zsh"
echo ".p10k.zsh file added to home"


git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# remove signature from discord - allow use virtual web-cam
#  sudo codesign --remove-signature "/Applications/Discord.app/Contents/Frameworks/Discord Helper (Renderer).app"