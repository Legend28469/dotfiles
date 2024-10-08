#!/bin/bash

# Function to check if a command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Function to install Homebrew
install_homebrew() {
    if ! command_exists brew; then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    else
        echo "Homebrew is already installed."
    fi
}

# Function to install a package using Homebrew
install_package() {
    if ! brew list "$1" &>/dev/null; then
        echo "Installing $1..."
        brew install "$1"
    else
        echo "$1 is already installed."
    fi
}

# Function to install a cask using Homebrew
install_cask() {
    if ! brew list --cask "$1" &>/dev/null; then
        echo "Installing $1..."
        brew install --cask "$1"
    else
        echo "$1 is already installed."
    fi
}

# Function to check and add a Homebrew tap
add_tap() {
    if ! brew tap | grep -q "$1"; then
        echo "Adding tap $1..."
        brew tap "$1"
    else
        echo "Tap $1 is already added."
    fi
}

# Function to setup core components
setup_core() {
    install_homebrew
    install_package "git"
    install_package "tmux"
    install_package "stow"
    install_package "neovim"
}

# Function to setup optional components
setup_optional() {
    install_cask "wezterm"
    install_cask "font-meslo-lg-nerd-font"
    install_package "powerlevel10k"
    install_package "koekeishiya/formulae/yabai"
    install_package "koekeishiya/formulae/skhd"
    add_tap "arl/arl"
    install_package "gitmux"

    echo "!!! Refer to https://github.com/Legend28469/dotfiles for Yabai setup !!!"

    echo "Starting yabai and skhd services..."
    echo "Note: You may be prompted to grant accessibility permissions."
    echo "Please grant the permissions when prompted."

    yabai --start-service
    skhd --start-service

    echo "If you encountered any issues with starting the services,"
    echo "please run the following commands manually after granting permissions:"
    echo "yabai --start-service"
    echo "skhd --start-service"
}

# Function to clone dotfiles and use stow
setup_dotfiles() {
    if [ ! -d "$HOME/dotfiles" ]; then
        echo "Cloning dotfiles repository..."
        git clone https://github.com/legend28469/dotfiles.git "$HOME/dotfiles"
    else
        echo "Dotfiles repository already exists."
    fi

    echo "Setting up dotfiles using stow..."
    cd "$HOME/dotfiles" || exit
    stow .
}

# Main script
echo "Dotfiles Setup Script"
echo "---------------------"
echo "1. Core Setup"
echo "2. Full Setup (Core + Optional)"
read -p "Choose an option (1/2): " choice

case $choice in
    1)
        echo "Setting up core components..."
        setup_core
        setup_dotfiles
        ;;
    2)
        echo "Setting up all components..."
        setup_core
        setup_optional
        setup_dotfiles
        ;;
    *)
        echo "Invalid option. Exiting."
        exit 1
        ;;
esac

echo "Setup complete!"
