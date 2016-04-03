#!/bin/bash

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install fish
brew install mcrypt
brew install nodejs
brew install redis
brew install mongodb
brew install mysql
brew install nginx
brew install memcached

brew install php70
brew install php70-mcrypt
brew install php70-memcached
brew install php70-redis

brew install neovim/neovim/neovim

brew cask install iterm2
brew cask install spectacle
brew cask install appcleaner

brew cask install virtualbox
brew cask install vagrant
brew cask install macdown
brew cask install sequel-pro
brew cask install robomongo

brew cask install vlc
brew cask install skype
brew cask install google-chrome
brew cask install firefox
brew cask install adapter
brew cask install atom
brew cask install bluestacks

npm install -g grunt
npm install -g grunt-cli
npm install -g pm2
npm install -g sails
npm install -g titanium
npm install -g alloy

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
