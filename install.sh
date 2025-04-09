#!/bin/bash

# ASCII art for a fun beaver-themed installation
cat << "EOF"
             _,--""--,_
        _,,-"          \
    ,-e"                ;
   (*             \     |
    \o\     __,-"  )    |
     `,_   (((__,-"     L___,,--,,__
        ) ,---\  /\    / -- '' -'-' )
      _/ /     )_||   /---,,___  __/
     """"     """"|_ /         ""
                  """"

Beaver.nvim - Dam Good Neovim Config
EFF

# Check if Neovim is installed
if ! command -v nvim &> /dev/null; then
  echo "🦫 Oh no! Neovim is not installed. Can't build a dam without wood!" 
  echo "Please install Neovim first."
  exit 1
fi

# Check if the destination directory exists and prompt for backup
if [ -d "$HOME/.config/nvim" ]; then
  echo "🦫 I found an existing lodge at $HOME/.config/nvim"
  read -p "Should I build a new dam and back up the old one? (y/n) " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    mv "$HOME/.config/nvim" "$HOME/.config/nvim.backup.$(date +%Y%m%d%H%M%S)"
    echo "🌊 Old dam safely moved upstream."
  else
    echo "🦫 Dam construction cancelled. Please backup your configuration manually."
    exit 1
  fi
fi

# Create the .config/nvim directory
echo "🪓 Gathering the logs for your new beaver lodge..."
mkdir -p "$HOME/.config/nvim"

# Copy configuration files
echo "🌲 Building the beaver dam framework..."
cp -r .config/nvim/* "$HOME/.config/nvim/"

# Install vim-plug if it's not already installed
if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
  echo "🪵 Setting up vim-plug (the beaver's secret building tool)..."
  curl -fLo "$HOME/.local/share/nvim/site/autoload/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

# Install plugins
echo "🦫 Gathering branches and twigs (plugins)..."
nvim --headless +PlugInstall +qall

echo "🦫 Your beaver lodge is ready! Start building with 'nvim'."
echo "Don't forget to check QUICKSTART.md for your beaver tool guide!"