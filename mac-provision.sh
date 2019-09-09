#!/bin/bash

export HOMEBREW_GITHUB_API_TOKEN="f5781ae4d4bcbacb948f9f6a3b905c5c8ce3f7b3"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install wget
brew install fish
brew install mcrypt
brew install nodejs
brew install nginx
brew install memcached
brew install ansible
brew install go
#brew install pyenv
#brew install pyenv-virtualenv

# zsh
# brew install zsh
# sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# PHP
brew install zlib
brew install php
brew install composer

brew install neovim/neovim/neovim
brew install terminal-notifier

# brew cask install hyper
brew cask install spectacle
brew cask install appcleaner

brew cask install vagrant
brew cask install macdown
brew cask install sequel-pro
brew cask install rdm
brew cask install mysqlworkbench
brew cask install postman

brew cask install vlc
brew cask install kodi
brew cask install spotify
brew cask install skype
# brew cask install whatsapp
brew cask install google-chrome
# brew cask install firefox
brew cask install adapter
brew cask install atom
brew cask install android-file-transfer
brew cask install google-backup-and-sync
brew cask install dropbox
brew cask install dnscrypt
brew cask install the-unarchiver

echo 'export PATH="/usr/local/sbin:$PATH"' >> ~/.bash_profile

# Create Workspace folder
if [ ! -d "$HOME/Workspace" ]; then
    mkdir $HOME/Workspace
fi

# Create GOPATH folder
if [ ! -d "$HOME/Workspace/Go" ]; then
    mkdir $HOME/Workspace/Go
    mkdir $HOME/Workspace/Go/bin
fi

# Go
echo 'export GOPATH=$HOME/Workspace/Go' >> ~/.bash_profile
echo 'export PATH=$GOPATH/bin:$PATH' >> ~/.bash_profile
echo 'export PATH="/usr/local/opt/go/libexec/bin:$PATH"' >> ~/.bash_profile
echo 'export PATH="$HOME/.pyenv/shims:$PATH"' >> ~/.basddh_profile
# echo 'if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi' >> ~/.bash_profile
# echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi';

# node packages
npm install -g grunt
npm install -g grunt-cli
# npm install -g titanium
# npm install -g alloy
npm install -g yarn

# atom themes
apm install gl-light-syntax
apm install two-light-ui
apm install isotope-light-ui
apm install isotope-ui
apm install danikai-light-syntax
apm install chester-atom-syntax

# atom packages
apm install editorconfig
apm install atom-bootstrap3
apm install atom-bootstrap4
apm install db-migrate-snippets
apm install project-manager
apm install vim-mode-plus
apm install nuclide
apm install custom-title
apm install file-icons
apm install highlight-selected

# hyperjs plugins
# npm install -g hpm-cli
# hpm install hyper-star-wars
# hpm install hyper-quit

# codeface
mkdir $HOME/Tools/Fonts
git clone git@github.com:chrissimpkins/codeface.git $HOME/Tools/Fonts/codeface

# Set vim
touch $HOME/.vimrc
echo 'set tabstop=2' >> $HOME/.vimrc
echo 'set shiftwidth=2' >> $HOME/.vimrc
echo 'set expandtab' >> $HOME/.vimrc

# Set neovim
if [ ! -d "$HOME/.config" ]; then
    mkdir $HOME/.config
fi

if [ ! -d "$HOME/.config/nvim" ]; then
    mkdir $HOME/.config/nvim
fi

touch $HOME/.config/nvim/init.vim
echo 'set tabstop=2' >> $HOME/.config/nvim/init.vim
echo 'set shiftwidth=2' >> $HOME/.config/nvim/init.vim
echo 'set expandtab' >> $HOME/.config/nvim/init.vim
echo 'set number' >> $HOME/.config/nvim/init.vim

# fish shell / omf
curl -L https://get.oh-my.fish | fish
omf install agnoster
omf theme agnoster
omf install osx

# fish shell / fisherman
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher install done
