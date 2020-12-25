#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Install MAS support
brew install mas
mas signin andrey@okonet.ru

# Install from MAS
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver
mas install 409183694 # Keynote
mas install 975937182 # Fantastical
mas install 408981434 # iMovie
mas install 775737590 # iA Writer
mas install 1176895641 # Spark
mas install 1107421413 # 1Blocker
mas install 409201541 # Pages
mas install 411643860 # DaisyDisk

# Install casks
brew install 1password
brew install adobe-creative-cloud
brew install brisync
brew install cleanshot
brew install dropbox
brew install figma
brew install firefox
brew install google-chrome
brew install imagealpha
brew install imageoptim
brew install java
brew install moom
brew install qlstephen
brew install qsyncthingtray
brew install slack
brew install sublime-text
brew install tunnelblick
brew install xld

