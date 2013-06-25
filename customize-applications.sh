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

## iTerm2
pushd $TMPDIR
curl -O https://gist.github.com/lukaszkorecki/1564995/raw/43cc2dae2dac748e54c857a60a2eb330586441cc/Monkai-iterm2.itermcolors
open Monkai-iterm2.itermcolors
popd

## Sublime Text 2

# Symlink subl script
ln -s ~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin

## iTerm2

# Use preferences from homesick symlink
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/jedahan/.iterm2"

## TotalFinder

# Enable autoupdate
defaults write com.binaryage.totalfinder SUEnableAutomaticChecks -int 1
# Add license
defaults write com.apple.finder TotalFinderLicenseName -string "Jonathan Dahan"
# Keep default dock icon
defaults write com.apple.finder TotalFinderDontCustomizeDockIcon -int 1
# Narrow tabs bar
defaults write com.apple.finder TotalFinderNarrowTabsBar -int 1
# Always maximise
defaults write com.apple.finder TotalFinderAlwaysMaximize -int 1
# Open new tabs with current target
defaults write com.apple.finder TotalFinderNewTabsWithCurrentTarget -int 1

## Finder
defaults write com.apple.finder NewWindowTargetPath -string "file://localhost/Users/jedahan/Downloads/"


## Twitter

# Make font a little bigger
defaults write com.twitter.twitter-mac FontSize 14

## Transmission

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
# Hide the donate and legal messages
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false
# Setup Blocklist
defaults write org.m0k.transmission BlocklistURL -string "http://list.iblocklist.com/?list=bt_level1&fileformat=p2p&archiveformat=gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true
defaults write org.m0k.transmission BlocklistNew -bool true
# Require Encryption
defaults write org.m0k.transmission EncryptionRequire -bool true
# Minimal UI
defaults write org.m0k.transmission SmallView -bool true
defaults write org.m0k.transmission InfoVisible -bool false
defaults write org.m0k.transmission StatusBar -bool false
defaults write org.m0k.transmission AutoSize -bool true
defaults write org.m0k.transmission BadgeDownloadRate -bool false
defaults write org.m0k.transmission BadgeUploadRate -bool false
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false
defaults write org.m0k.transmission DownloadAsk -bool false

## Boot Logo

# Install glider Boot Logo
sudo cp boot/{BootLogo.png,DefaultDesktop.jpg} /System/Library/CoreServices/

## Block malware
sudo curl 'winhelp2002.mvps.org/hosts.txt' -a -o /private/etc/hosts

## Make firefox default browser
## Remove always perform this check when starting firefox (for default browser)
