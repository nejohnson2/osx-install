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

# Install applications
$apps = 'alfred app-cleaner arduino dropbox firefox iterm2 sublime-text transmission'
$languages = 'python ruby'
$clis = 'android-sdk deliver hub mongodb nmap node redis the_silver_searcher trash watch'
$npm_clis = 'coffee-script meteorite police'
$pips = 'httpie'
$rubygems = 'foreman homesick lolcat lolcommits'
$quicklook_plugins = 'qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webp-quicklook suspicious-package'

for app in $apps; do brew cask install $app; done
for language in $languages; do brew install $language; done
for cli in $clis; do brew install $cli; done
for npm_cli in $npm_clis; do npm install -g $npm_cli; done
for pip in $pips; do pip install $pip; done
for rubygem in $rubygems; do gem install $rubygem; done
for quicklook in $quicklook_plugins; do brew cask install $plugin; done && qlmanage -r