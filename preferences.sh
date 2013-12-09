## General

# Set computer name
name="talon"
scutil --set ComputerName $name
scutil --set HostName $name
scutil --set LocalHostName $name
defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $name

## Input Devices

# Enable tap to click for this user and for the login screen
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

## User Interface

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable the dashboard
defaults write com.apple.dashboard mcx-disabled -boolean YES

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Menubar shows volume wifi battery and clock
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Volume.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Set clock format
defaults write com.apple.menuextra.clock DateFormat -string "h:mm"

## Finder

# Finder: Open home folder in new windows
defaults write com.apple.finder NewWindowTargetPath -string "file://localhost/Users/jedahan/"

# Finder: Enable full keyboard access for all controls (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Finder: Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Finder: Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Finder: Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

# Finder: Open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# Finder: Disable .DS_Store file creation on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Finder: Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Finder: Display full POSIX path as Finder window title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

## Customization

# Show the ~/Library folder
chflags nohidden ~/Library

# Disable Gatekeeper
sudo spctl --master-disable

## Cleanup

# Kill affected applications
for app in Finder Dock SystemUIServer; do killall "$app" > /dev/null 2>&1; done
echo "Done. Note that some of these changes require a logout/restart to take effect."
