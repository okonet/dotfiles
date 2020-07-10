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
mas install 975937182 # Fantastical 2 (2.4.4)
mas install 408981434 # iMovie (10.1.7)
mas install 1278508951 # Trello (2.10.0)
mas install 775737590 # iA Writer (4.1.3)
mas install 918207447 # Annotate (2.1.4)
# mas install 918858936 # Airmail 3 (3.5.4)
mas install 1107421413 # 1Blocker (1.4.1)
# mas install 557168941 # Tweetbot (2.5.4)
mas install 409201541 # Pages (6.3.1)
mas install 969418666 # ColorSnapper2 (1.5.0)
mas install 411643860 # DaisyDisk (4.4)

# Install casks
brew cask install dropbox
brew cask install 1password
brew cask install moom
brew cask install dash3
brew cask install rescuetime
brew cask install sublime-text
brew cask install google-chrome
brew cask install firefox
brew cask install slack
brew cask install adobe-creative-cloud
brew cask install figma
brew cask install audirvana-plus2
brew cask install imageoptim
brew cask install imagealpha
brew cask install brisync
brew cask install qsyncthingtray

# Support older versions. This is needed for Lightroom
# brew tap caskroom/homebrew-versions
# brew cask install adobe-photoshop-lightroom571

# Install SketchTool CLI
# /Applications/Sketch.app/Contents/Resources/sketchtool/install.sh
