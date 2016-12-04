## General

# Set computer name
name="Gioia"
[[ `hostname` == $name ]] || {
  scutil --set ComputerName $name
  scutil --set HostName $name
  scutil --set LocalHostName $name
  defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $name
}

# Ask for password after screen sleeps
defaults write com.apple.screensaver askForPassword -bool true

## Input Devices

# Enable tap to click for this user and for the login screen
defaults -currentHost write -globalDomain com.apple.mouse.tapBehavior -int 1
defaults write -globalDomain com.apple.mouse.tapBehavior -int 1

## User Interface

# Dark Interface
defaults write -globalDomain AppleInterfaceStyle -string Dark

# Control + scroll for zooming
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true

# Disable the dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Remove default apps from the Dock
defaults write com.apple.dock persistent-apps -array ""

# Set clock format
defaults write com.apple.menuextra.clock DateFormat -string "h:mm "

# Hide Search, Time Machine, User, and Bluetooth icons
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
for domain in ~/Library/Preferences/ByHost/com.apple.systemuiserver.* ; do
  defaults write $domain dontAutoLoad -array \
    "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" \
    "/System/Library/CoreServices/Menu Extras/User.menu" \
    "/System/Library/CoreServices/Menu Extras/Bluetooth.menu"

## Finder

# Finder: Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: Disable .DS_Store file creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

## Cleanup

# Kill affected applications
for app in Finder Dock SystemUIServer cfprefsd; do killall "$app" > /dev/null 2>&1; done
echo "Done. Note that some of these changes require a logout/restart to take effect."
