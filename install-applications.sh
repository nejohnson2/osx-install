# install homebrew and cask
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
brew install git --with-pcre
brew tap phinze/homebrew-cask
brew tap homebrew/dupes
brew install brew-cask

# install applications
for app in alfred dropbox google-chrome little-snitch the-unarchiver scrup steam sublime-text transmission
  brew cask install $app
done

for language in python ruby
  brew install $language
done

for cli in android-sdk colordiff curl hub jq nmap node rlwrap the_silver_searcher trash
  brew install $cli
done

# Install TotalFinder and TotalTerminal
for package in TotalFinder-1.4.3 TotalTerminal-1.3
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

for rubygem in homesick lolcat lolcommits
  sudo gem install $rubygem
done