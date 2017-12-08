#!/bin/bash

# Installs Homebrew, Git, git-extras, git-friendly, hub, Node.js, etc.

# Ask for the administrator password upfront
sudo -v

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with macOS are outdated)
brew install coreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# More recent versions of some macOS tools
brew install grep

# Java is required for some packages
brew install cask
brew tap caskroom/versions
brew cask install java

# Git
brew install git
brew install git-extras
brew install hub
brew install diff-so-fancy
brew install tree
brew install ant
sudo bash < <( curl https://raw.githubusercontent.com/jamiew/git-friendly/master/install.sh)  # git-friendly

# Extend global $PATH
#echo -e "setenv PATH $HOME/dotfiles/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin" | sudo tee /etc/launchd.conf

# Node & npm
brew install node
brew install yarn
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash  # nvm, Node
# version manager
npm config set loglevel warn

# Install global npm packages
npm install -g google-font-installer

# Install some fonts from Google Fonts
gfi install Fira Mono
gfi install Fira Sans
gfi install Fira Sans Condensed
gfi install Fira Sans Extra Condensed

# Python
brew install python

# Verify installation
command -v git
command -v nvm
command -v node
command -v npm
command -v yarn
command -v python

# Remove outdated versions from the cellar
brew cleanup
