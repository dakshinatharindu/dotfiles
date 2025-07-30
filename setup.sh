#!/bin/bash

# Setup script for my development environment

############## ZSH Configuration ###############
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

############# LAZYGIT ##########################
echo "Installing LazyGit..."
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | \grep -Po '"tag_name": *"v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${LAZYGIT_VERSION}/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit -D -t /usr/local/bin/
