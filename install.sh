#!/bin/bash

# Check if Neovim is installed
if ! command -v nvim &> /dev/null; then
  echo "Error: Neovim is not installed. Please install it first."
  exit 1
fi

# Check if the destination directory exists and prompt for backup
if [ -d "$HOME/.config/nvim" ]; then
  read -p "$HOME/.config/nvim already exists. Back it up? (y/n) " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d%H%M%S)"
    echo "Backed up existing configuration."
  else
    echo "Installation cancelled. Please backup your configuration manually."
    exit 1
  fi
fi

# Create the .config/nvim directory
mkdir -p "$HOME/.config/nvim"

# Copy configuration files
cp -r .config/nvim/* "$HOME/.config/nvim/"

# Install vim-plug if it's not already installed
if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
  echo "Installing vim-plug..."
  curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install plugins
echo "Installing plugins..."
nvim --headless +PlugInstall +qall

echo "Installation complete! Start Neovim with 'nvim'."