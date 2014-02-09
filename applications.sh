# Install xcode commandline tools
sudo xcode-select --install
sudo xcodebuild -license
# Install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# Install homebrew cask
brew tap phinze/homebrew-cask
brew install brew-cask
# Tap dupes and deliver
brew tap homebrew/dupes
brew tap gerhard/homebrew-deliver
# Install latest git and zsh
brew install git --with-pcre
brew install --disable-etcdir zsh

# Install pip
sudo easy_install pip

# Install applications
$apps = 'alfred arduino chromium daisydisk dogecoin dropbox firefox iterm2 skype transmission virtualbox wireshark xquartz'
$languages = 'python ruby'
$clis = 'android-sdk deliver grc hub lnav mongodb nmap node redis the_silver_searcher trash watch'
$npm_clis = 'coffee-script police'
$pips = 'httpie'
$rubygems = 'bro foreman homesick lolcat lolcommits'
$quicklook_plugins = 'qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package'
$screensavers = 'alib1'

for app in $apps; do brew cask install $app; done
for screensaver in $screensavers; do brew cask install $screensaver; done
for language in $languages; do brew install $language; done
for cli in $clis; do brew install $cli; done
for npm_cli in $npm_clis; do npm install -g $npm_cli; done
for pip in $pips; do pip install $pip; done
for rubygem in $rubygems; do gem install $rubygem; done
for quicklook in $quicklook_plugins; do brew cask install $plugin; done && qlmanage -r
