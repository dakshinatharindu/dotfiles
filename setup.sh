#!/bin/bash

# Setup script for my development environment

echo "Installing ZSH and Oh My Zsh..."
# Install ZSH
sudo apt update && sudo apt install -y zsh curl git
# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Find the ZSH_THEME variable in .zshrc and set it to a preferred theme
ZSH_THEME="daveverwer"
# Update .zshrc with the new theme
sed -i "s/^ZSH_THEME=.*/ZSH_THEME=\"$ZSH_THEME\"/" ~/.zshrc
# Update plugins in .zshrc
sed -i 's/^plugins=(git)$/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc
