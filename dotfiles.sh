## Block malware
sudo curl 'winhelp2002.mvps.org/hosts.txt' -a -o /private/etc/hosts

# Install Inconsolata font
curl http://levien.com/type/myfonts/Inconsolata.otf -o ${HOME}/Library/Fonts/Inconsolata.otf

## Setup iTerm2
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/jedahan/.iterm2"

## Install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

## Symlink dotfiles
homesick clone jedahan/dotfiles && homesick symlink jedahan/dotfiles

## Set shell to zshell
chsh -s /bin/zsh

# Install sublime text 3 package control
./sublime.zsh

## Set bootlogo
sudo cp boot/{BootLogo.png,DefaultDesktop.jpg} /System/Library/CoreServices/