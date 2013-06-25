# Twitter: increase font size
defaults write com.twitter.twitter-mac FontSize 14

# TotalFinder: Enable autoupdate
defaults write com.binaryage.totalfinder SUEnableAutomaticChecks -int 1
# TotalFinder: Add license
defaults write com.apple.finder TotalFinderLicenseName -string "Jonathan Dahan"
# TotalFinder: Keep default dock icon
defaults write com.apple.finder TotalFinderDontCustomizeDockIcon -int 1
# TotalFinder: Use narrow tabs bar
defaults write com.apple.finder TotalFinderNarrowTabsBar -int 1
# TotalFinder: Start maximized
defaults write com.apple.finder TotalFinderAlwaysMaximize -int 1
# TotalFinder: Open new tabs with current target
defaults write com.apple.finder TotalFinderNewTabsWithCurrentTarget -int 1

# Transmission: Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true
# Transmission: Hide the donate and legal messages
defaults write org.m0k.transmission WarningDonate -bool false
defaults write org.m0k.transmission WarningLegal -bool false
# Transmission: Setup Blocklist
defaults write org.m0k.transmission BlocklistURL -string "http://list.iblocklist.com/?list=bt_level1&fileformat=p2p&archiveformat=gz"
defaults write org.m0k.transmission BlocklistAutoUpdate -bool true
defaults write org.m0k.transmission BlocklistNew -bool true
# Transmission: Require Encryption
defaults write org.m0k.transmission EncryptionRequire -bool true
# Transmission: Minimal UI
defaults write org.m0k.transmission SmallView -bool true
defaults write org.m0k.transmission InfoVisible -bool false
defaults write org.m0k.transmission StatusBar -bool false
defaults write org.m0k.transmission AutoSize -bool true
defaults write org.m0k.transmission BadgeDownloadRate -bool false
defaults write org.m0k.transmission BadgeUploadRate -bool false
defaults write org.m0k.transmission DownloadAsk -bool false
defaults write org.m0k.transmission MagnetOpenAsk -bool false
defaults write org.m0k.transmission DownloadAsk -bool false