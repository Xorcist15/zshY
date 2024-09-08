#!/bin/bash

DIROHMYZSH="~/.local/share/oh-my-zsh"

# Update pacman and download zsh
sudo pacman -Sy
sudo pacman -S --noconfirm zsh

# Set zsh as default shell
if chsh -s $(which zsh); then
  echo "Zsh set as default shell."
else
  echo "Failed to set Zsh as default shell."
  exit 1
fi

# Install Oh My Zsh directly
echo "Installing Oh My Zsh..."

if sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"; then
  echo "Oh My Zsh installed successfully."
  echo "Moving Oh My Zsh  to $DIROHMYZSH"
  mv ~/.oh-my-zsh $DIROHMYZSH
else
  echo "Failed to install Oh My Zsh."
  exit 1
fi

# Create symbolic links
if [ -d ~/github ]; then
  echo "Creating symbolic links..."
  ln -s ~/github/zshY/zsh ~/.config/zsh
  ln -s ~/github/zshY/zsh/.zshenv ~/.zshenv 
  echo "Symbolic links created successfully."
else
  echo "GitHub folder does not exist in your home directory, please fix the problem."
  exit 1
fi

# Emptying history file
echo "Emptying .zsh_history file..."
echo -n > ~/github/zshY/zsh/.zsh_history
