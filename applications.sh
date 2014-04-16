# Update software
sudo softwareupdate --install --all

# Install xcode commandline tools
sudo xcode-select --install
sudo xcodebuild -license
# Install package managers homebrew, homebrew cask, and curdling (for python)
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew tap phinze/homebrew-cask
brew install brew-cask
easy_install curdling

# Install applications
brew install --disable-etcdir zsh # because osx is misconfigured
brew tap gerhard/homebrew-deliver # for deliver
brew tap homebrew/dupes # for ruby

apps = 'alfred arduino cheatsheet chromium daisydisk dogecoin dropbox firefox iterm2 skype transmission virtualbox wireshark xquartz'
languages = 'python ruby'
clis = 'android-sdk deliver git hub imagemagick mongodb nmap node redis the_silver_searcher trash watch'
npm_clis = 'coffee-script-redux'
pys = 'beets httpie'
rubygems = 'foreman homesick lolcat lolcommits'
quicklook_plugins = 'qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package'
screensavers = 'alib1'

for app in $apps; do brew cask install $app; done
for screensaver in $screensavers; do brew cask install $screensaver; done
for language in $languages; do brew install $language; done
for cli in $clis; do brew install $cli; done
for npm_cli in $npm_clis; do npm install -g $npm_cli; done
for py in $pys; do curd install $py; done
for rubygem in $rubygems; do gem install $rubygem; done
for quicklook in $quicklook_plugins; do brew cask install $plugin; done && qlmanage -r
