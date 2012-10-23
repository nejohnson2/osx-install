#!/bin/env bash

# install homebrew and cask
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew install brew-cask

# install applications
for app in alfred dropbox google-chrome little-snitch the-unarchiver scrup steam sublime-text transmission
  brew cask install $app
done

for language in python ruby
  brew cask install $language
done

for cli in git ack android-sdk colordiff curl hub nmap node rlwrap
  brew install $cli
done

brew install --disable-etcdir zsh

pip install httpie

gem install homesick