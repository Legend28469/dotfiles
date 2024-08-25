# My dotfiles

This repository contains the dotfiles for my system

## Prerequisites

* ZSH - Installed by default on Mac confirm using `echo $0`
* The config files coming in must not exist already in the final install location

## Requirements

> ℹ️ You can use this installer to automate the process
> [setup_dotfiles.sh](https://github.com/Legend28469/dotfiles/blob/master/setup_dotfiles.sh)

### Core 

These are the key aspects of the config

#### Brew

A package manager for macOS that simplifies the installation of software.

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

#### Git

A distributed version control system for tracking changes in source code.

```
brew install git
```

#### TMUX

A terminal multiplexer that allows multiple terminal sessions within a single window.

```
brew install tmux
```

#### Stow

GNU Stow is a symlink farm manager that helps manage dotfiles.

```
brew install stow
```

#### Neovim

A highly configurable text editor built to enable efficient text editing.

```
brew install neovim
```

### Optional

Can have a good setup without these but they're still nice to have

#### Wezterm

A GPU-accelerated cross-platform terminal emulator and multiplexer.

```
brew install --cask wezterm
```

#### Meslo Nerd Font

A patched font designed for programming with added icons and glyphs.

```
brew install font-meslo-lg-nerd-font
```

#### Powerlevel10k

A theme for Zsh that emphasizes speed, flexibility, and out-of-the-box experience.

```
brew install powerlevel10k
```

#### Gitmux

Shows git information in TMUX status bar.

```
brew tap arl/arl
brew install gitmux
```

#### Yabai

A tiling window manager for macOS based on binary space partitioning.

##### Setup 
> 1. Open Several Desktops (~7) on Your Machine
> 2. Go To Keyboard Settings > Shortcuts > Mission Control
> 3. Expand Mission Control and Turn On Shortcuts for Switching Spaces 1-7 with “Ctrl + # Of Space”
> 4. Go to System Settings > Accessibility > Display
> 5. Turn On Reduce Motion
> 6. Go To System Settings > Desktop & Dock > Mission Control
> 7. Turn off “Automatically Rearrange Spaces Based On Most Recent Use”
> 8. Personally, I only keep “Displays Have Separate Spaces” turned on here, and that’s what I’d recommend

```
brew install koekeishiya/formulae/yabai
yabai --start-service
```

Allow any prompts for accessibility permissions.

#### SKHD

A simple hotkey daemon for macOS that works well with Yabai.

```
brew install koekeishiya/formulae/skhd
skhd --start-service
```

Allow any prompts for accessibility permissions.

## Installation

1. First clone/download the dotfiles to your $HOME directory and CD to the new "dotfiles" directory

```
git clone git@github.com/legend28469/dotfiles.git
cd dotfiles
```

> ℹ️ You can optionally delete configs you don't care about before running stow this initial time.

2. Use GNU Stow to create symlinks (will put stuff where they belong)

```
stow .
```

## Reference / More Information
* [Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
* [How To Setup And Use The Yabai Tiling Window Manager On Mac](https://www.josean.com/posts/yabai-setup)
* [TMUX Setup](https://www.josean.com/posts/tmux-setup)
