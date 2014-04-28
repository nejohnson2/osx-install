# Update software
sudo softwareupdate --install --all

# Install xcode and commandline tools (be sure to choose 'Get Xcode')
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools/
sudo xcodebuild -license

# Install homebrew package manager and applications
brew -v || ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew -v && {
  brew bundle Brewfile
  brew bundle Caskfile
  qlmanage -r
}

# Install commandline applications
easy_install beets
easy_install httpie

# Install coffee-script
npm install -g coffee-script-redux

# Install some more cli utilities
export GEM_HOME="${HOME}/.gems"
export GEM_PATH="${HOME}/.gems"
gem install foreman homesick lolcat lolcommits
