# install homebrew and cask
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew install git --with-pcre
brew install --disable-etcdir zsh
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew install brew-cask

# install applications
for app in alfred app-cleaner arduino dropbox firefox iterm2 sublime-text transmission; do
  brew cask install $app
done

for language in python ruby; do
  brew install $language
done

for cli in android-sdk curl kismet mongodb nmap node redis the_silver_searcher ssh-copy-id tor trash; do
  brew install $cli
done

for npm_cli in coffee-script meteorite police; do
  npm install -g $npm_cli
done

# Install TotalFinder
for package in TotalFinder-1.4.10; do
  name=${package%%-*}
  old_pwd=`pwd`
  cd ${HOME}/Downloads
  curl -OL "http://downloads.binaryage.com/${package}.dmg"
  hdiutil attach ${package}.dmg
  cd /Volumes/${name}
  sudo installer -pkg /Volumes/${name}/${name}.pkg -target "/"
  cd ${HOME}/Downloads
  sleep 3
  hdiutil detach /Volumes/${name}
  rm ${package}.dmg
  cd $old_pwd
done

pip install httpie

for rubygem in foreman homesick lolcat lolcommits; do
  gem install $rubygem
done
