# install homebrew and cask
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew install git --with-pcre
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew install brew-cask

# install applications
for app in alfred app-cleaner arduino daisy-disk dropbox google-chrome iterm2 little-snitch the-unarchiver steam sublime-text super-collider textual transmission
  brew cask install $app
done

for language in python ruby
  brew install $language
done

for cli in android-sdk colordiff curl hub jq nmap node rlwrap the_silver_searcher trash
  brew install $cli
done

for npm_cli in coffee-script meteorite police
  npm install -g $npm_cli
done

# Install TotalFinder
for package in TotalFinder-1.4.10
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

brew install --disable-etcdir zsh

pip install httpie

for rubygem in foreman homesick lolcat lolcommits
  sudo gem install $rubygem
done
