# Update software
sudo softwareupdate --install --all

# Install xcode and commandline tools (be sure to choose 'Get Xcode')
xcode-select --install
sudo xcode-select --switch /Library/Developer/CommandLineTools/
sudo xcodebuild -license

# Install python package manager and applications
easy_install curdling
pys = 'beets httpie'
brew -v || ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
for py in $pys; do curd install $py; done

# Install homebrew package manager and applications
brew -v && {
  brew tap phinze/homebrew-cask
  brew install brew-cask
  brew tap caskroom/versions

  # Install applications
  brew install --disable-etcdir zsh # because osx is misconfigured
  brew tap gerhard/homebrew-deliver # for deliver
  brew tap homebrew/dupes # for ruby

  apps='alfred arduino atom cheatsheet chromium daisydisk dogecoin dropbox firefox-beta iterm2-beta skype transmission virtualbox wireshark xquartz'
  languages='python ruby'
  clis='android-sdk deliver git hub imagemagick mongodb nmap node redis the_silver_searcher trash watch'
  npm_clis='coffee-script-redux'
  rubygems='foreman homesick lolcat lolcommits'
  quicklook_plugins='qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package'

  for app in $apps; do brew cask install $app; done
  for language in $languages; do brew install $language; done
  for cli in $clis; do brew install $cli; done
  for npm_cli in $npm_clis; do npm install -g $npm_cli; done
  sudo gem install $rubygems
  for quicklook in $quicklook_plugins; do brew cask install $plugin; done && qlmanage -r
}
