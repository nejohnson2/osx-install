#!/bin/bash

# Update software
sudo softwareupdate --install --all

brew -v && {
  brew update
  brew upgrade
  
  brew install python
  brew install gcc
  brew install swig
  brew install pkg-config
  brew install git
  brew install wget
  brew install node
  brew install heroku-toolbelt
  brew install autoenv
  brew install gdal

  brew cask install virtualbox
  brew cask install xquartz
  brew cask install qlcolorcode
  brew cask install qlmarkdown
  brew cask install qlstephen
  brew cask install quicklook-csv
  brew cask install quicklook-json
  brew cask install qlimagesize
  brew cask install cyberduck
  brew cask install the-unarchiver
  brew cask install google-chrome
  brew cask install sublime-text
  brew cask install mactex
  brew cask install evernote
  brew cask install microsoft-office # office for mac 2011
  brew cask install osxfuse
  brew cask install sshfs
  brew cask install flickr-uploadr
  brew cask install wireshark
  brew cask install suspicious-package

  brew cask install coolterm
  brew cask install dropbox

  brew cleanup
  qlmanage -r
}

# Download Terminal theme
cd ~/Desktop/
wget http://media.tannern.com/tanner.terminal
open tanner.terminal
rm tanner.terminal

# Setup CUSP configuration
BASH_PROFILE_PATH=~/.bash_profile
echo 'Configuring CUSP SSH alias.'
echo 'Enter the alias name:'
read -p '> ' ALIAS 

echo 'Enter your username:'
read -p '> ' USER

echo 'Enter the CUSP server address (gateway):'
read -p '> ' SERVER 

echo 'Enter second server address (compute):'
read -p '> ' SERVER2

echo "" >> $BASH_PROFILE_PATH
echo "alias $ALIAS='ssh $USER@$SERVER -L 8000:$SERVER2:8000'" >> $BASH_PROFILE_PATH

# Configure git
git config --global user.name "Nicholas Johnson"
git config --global user.email "nejohnson2@gmail.com"
