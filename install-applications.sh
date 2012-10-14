#!/bin/bash

# install homebrew and cask
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew install brew-cask

brew cask install google-chrome 
brew cask install one-password
brew cask install adium
brew cask install alfred
brew cask install caffeine
brew cask install dropbox
brew cask install echofon
brew cask install firefox
brew cask install flux
brew cask install iterm2
brew cask install sparrow
brew cask install the-unarchiver
brew cask install sublime-text

brew install perl
brew install python
brew install ruby

brew install bazaar
brew install git
brew install mercurial
brew install subversion

brew install ack
brew install colordiff
brew install curl
brew install emacs
brew install findbugs
brew install ncftp
brew install openssl
brew install p7zip
brew install pdfgrep
brew install reattach-to-user-namespace
brew install rlwrap
brew install ssh-copy-id
brew install tmux
brew install wget
brew install zsh
brew install hub

# install vim with ruby support for command-t
brew install https://raw.github.com/Homebrew/homebrew-dupes/master/vim.rb
# install macvim with ruby support for command-t
brew install macvim
