#!/bin/bash

export HOMEBREW_GITHUB_API_TOKEN="f5781ae4d4bcbacb948f9f6a3b905c5c8ce3f7b3"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
brew install fish
brew install mcrypt
brew install nodejs
brew install redis
brew install mongodb
brew install mysql
brew install nginx
brew install memcached
brew install ansible

# PHP
brew install homebrew/php/php71
brew install homebrew/php/php71-mcrypt
brew install homebrew/php/php71-redis

brew install neovim/neovim/neovim

brew cask install iterm2
brew cask install spectacle
brew cask install appcleaner

brew cask install virtualbox
brew cask install vagrant
brew cask install macdown
brew cask install sequel-pro
brew cask install robomongo
brew cask install rdm
brew cask install mysqlworkbench
brew cask install postman

brew cask install vlc
brew cask install kodi
brew cask install skype
brew cask install whatsapp
brew cask install google-chrome
brew cask install firefox
brew cask install adapter
brew cask install atom
brew cask install bluestacks
brew cask install utorrent
brew cask install android-file-transfer
brew cask install google-drive
brew cask install dnscrypt
brew cask install the-unarchiver

echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

# node packages
npm install -g grunt
npm install -g grunt-cli
npm install -g pm2
npm install -g sails
npm install -g titanium
npm install -g alloy
npm install -g yarn

# atom themes
apm install naturerainbow-light-syntax
apm install gl-light-syntax
apm install two-light-ui
apm install isotope-light-ui
apm install danikai-light-syntax

# atom packages
apm install editorconfig
apm install atom-bootstrap3
apm install atom-bootstrap4
apm install db-migrate-snippets
apm install project-manager
apm install term3
apm install vim-mode-plus
apm install nuclide

# codeface
git clone git@github.com:chrissimpkins/codeface.git ~/Downloads/codeface

# iTerm2 Color Schemes
git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git ~/Downloads/iTerm-Color-Schemes

# Recommended iTerm2 settings
# Color: dotgov
# Font: Terminus 14pt
# Window: 190 x 54

# Set fish prompt
cp config/config.fish.dark ~/.config/fish/config.fish
