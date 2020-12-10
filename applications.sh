#!/bin/bash

# Ask for the administrator password upfront
sudo -v

# Install MAS support
brew install mas
mas signin andrey@okonet.ru

# Install from MAS
mas install 497799827 # Xcode (9.2)
mas install 443987910 # 1Password
mas install 425424353 # The Unarchiver (3.11.3)
mas install 409183694 # Keynote (7.3)
mas install 975937182 # Fantastical
mas install 408981434 # iMovie (10.1.7)
mas install 775737590 # iA Writer (4.1.3)
mas install 1176895641 # Spark
mas install 1107421413 # 1Blocker (1.4.1)
mas install 409201541 # Pages (6.3.1)
# mas install 969418666 # ColorSnapper2 (1.5.0)
mas install 411643860 # DaisyDisk (4.4)

# Install casks
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install brisync
brew cask install cleanshot
brew cask install dropbox
brew cask install figma
brew cask install firefox
brew cask install font-fira-code
brew cask install font-fira-mono-for-powerline
brew cask install google-chrome
brew cask install imagealpha
brew cask install imageoptim
brew cask install java
brew cask install moom
brew cask install qlstephen
brew cask install qsyncthingtray
brew cask install slack
brew cask install sublime-text
brew cask install tunnelblick
brew cask install xld

