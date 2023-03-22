#!/bin/bash

# Installs Homebrew, Git, git-extras, git-friendly, hub, Node.js, etc.

# Ask for the administrator password upfront
sudo -v

# Install XCode CLI tools
xcode-select --install

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# GNU core utilities (those that come with macOS are outdated)
#brew install coreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
#brew install findutils

# More recent versions of some macOS tools
brew install grep

# Install cask
brew install cask

# Java is required for some packages
#brew tap caskroom/versions
#brew cask install java

# Git & friends
brew install git
brew install git-extras
brew install git-lfs
brew install gh
brew install diff-so-fancy
brew install tree

# Syncthing
brew install syncthing
brew services start syncthing

# Node & yarn & (p)npm
brew install node
brew install corepack
corepack enable
corepack prepare pnpm@latest --activate
corepack prepare yarn@stable --activate
ibrew "Schniz/tap/fnm" # This cannot be installed under arm64 yet

# NPM settings
npm config set loglevel warn

# Install QuickLook Plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json

# Install fonts
brew tap caskroom/fonts
brew cask install font-fira-code

# Python
brew install python

# Install Mackup
brew install mackup
# and restore apps preferences
mackup restore

# Verify installation
command -v git
command -v fnm
command -v node
command -v npm
command -v yarn
command -v python

# Remove outdated versions from the cellar
brew cleanup
