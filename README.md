# My dotfiles

This repository contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Git

```
brew install git
```

### Stow

```
brew install stow
```

## Installation

1. First clone/download the dotfiles to your $HOME directory

```
git clone git@github.com/legend28469/dotfiles.git
cd dotfiles
```

2. Use GNU Stow to create symlinks (will put stuff where they belong)
```
stow .
```

## Reference / More Information
[Stow has forever changed the way I manage my dotfiles](https://www.youtube.com/watch?v=y6XCebnB9gs)
