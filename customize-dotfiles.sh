## Shell

# Install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# Use zsh dotfiles
homesick clone jedahan/dotfiles && homesick symlink jedahan/dotfiles
# Make zsh default shell
chsh -s /bin/zsh

## Font

# Install Inconsolata
curl http://levien.com/type/myfonts/Inconsolata.otf -o ${HOME}/Library/Fonts/Inconsolata.otf

## Terminal

# Use Monokai theme
curl https://raw.github.com/stephenway/Monokai.terminal/master/Monokai.terminal -o ${HOME}/Downloads/Monokai.terminal
open ${HOME}/Downloads/Monokai.terminal
sleep 1
defaults write com.apple.terminal "Default Window Settings" -string "Monokai"
defaults write com.apple.terminal "Startup Window Settings" -string "Monokai"

## Sublime Text 2

# Symlink subl script
ln -s ~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin

## TotalTerminal

# Hide menubar icon
defaults write com.apple.terminal TotalTerminalShowStatusItem -int 0
# Use normal finder icon
defaults write com.apple.finder TotalFinderDontCustomizeDockIcon -int 1

## Alfred

# Hide hat icon
defaults write com.alfredapp.alfred "appearance.hideHat" -int 1
# Hide preferences cog
defaults write com.alfredapp.alfred "appearance.hidePreferencesCogIcon" -int 1
# Hide menubar icon
defaults write com.alfredapp.alfred "appearance.hideStatusBarIcon" -int 1

## Transmission

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false
# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false
