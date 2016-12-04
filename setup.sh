#!/bin/sh

echo "Time for a fresh start!"
echo "root permissions are required for a few commands, asking upfront"
sudo -v

# Keep-alive: update existing `sudo` time stamp until this script has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Set Terminal Preferences
touch ~/.bash_profile
echo "export PS1=\"Gioia : \"" >> ~/.bash_profile
echo "export CLICOLOR=1" >> ~/.bash_profile
source ~/.bash_profile

# Install Commandline tools
# This installs the latest version which may not be desirable for gnuradio!
# It also bypasses the pop-up
echo "Installing apple developer tools"
sudo touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
sudo softwareupdate --install --all --verbose

# Install Homebrew
brew -v > /dev/null 2>&1 || {
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

# Mac App Store Command Line
mas -v > /dev/null 2>&1 || {
  echo "Installing mas"
  brew install mas
  echo "Login to the App Store (credentials are NOT stored)"
  read -p "Apple ID: " apple_id
  read -p "Password: " password -s
  mas signin $apple_id $password
  unset apple_id
  unset password
}

# Install Xcode
# this takes a long time and may not be necessary.  Maybe for gnuradio?
mas install 497799835
xcodebuild -license accept

./preferences.sh
./install_applications.sh
./install_science_pack.sh

