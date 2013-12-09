# Install homebrew with cask
xcode-select --install # install cli tools!
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew install git --with-pcre
brew install --disable-etcdir zsh
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew tap gerhard/homebrew-deliver
brew install brew-cask

# Install applications
$apps = 'alfred app-cleaner arduino dropbox firefox iterm2 sublime-text transmission'
$languages = 'python ruby'
$clis = 'android-sdk curl deliver kismet mongodb nmap node redis the_silver_searcher ssh-copy-id tor trash'
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

# Install TotalFinder
for package in TotalFinder-1.5.2; do
  name=${package%%-*}
  pushd ${HOME}/Downloads
  curl -OL "http://downloads.binaryage.com/${package}.dmg"
  hdiutil attach ${package}.dmg
  pushd /Volumes/${name}
  sudo installer -pkg /Volumes/${name}/${name}.pkg -target "/"
  popd
  sleep 3
  hdiutil detach /Volumes/${name}
  rm ${package}.dmg
  popd
done