#!/bin/bash

# Bootstrap brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
git -C "$(brew --repo homebrew/core)" fetch --unshallow

# Basic Brew workstation packages
brew install git
brew tap drone/drone
# CI / CM
brew install drone ansible consul vault
# Basic utilities
brew install curl wget zsh zsh-completions zsh-syntax-highlighting
# Cloud CLIs
brew install kubernetes-cli azure-cli

# Brew Casks
brew cask install virtualbox
brew cask install docker
brew cask install vagrant
brew cask install atom

# Atom Stuff
apm install atom-beautify
apm install file-icons
apm install ansible-vault
apm install linter-ansible-linting
apm install language-ansible
apm install autocomplete-ansible
apm install git-plus
apm install git-time-machine
apm install linter-terraform-syntax
apm install language-terraform
apm install sublime-style-column-selection

# Execute kinit for the first time
echo Enter password to initialize kinit:
kinit
