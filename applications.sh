# Set Terminal Preferences
touch .bash_profile
echo "export PS1=\"Gioia : \"" >> .bash_profile
echo "export CLICOLOR=1" >> .bash_profile
source .bash_profile

# Update software
sudo softwareupdate --install --all

# Install  Commandline tools
xcode-select --install
xcodebuild -license

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew -v && {
  brew update
  brew upgrade
  brew tap homebrew/python
  brew install python
  brew install matplotlib
  brew install pillow
  brew install scipy
  brew install scapy
  brew install pkg-config
  brew install git
  brew install wget
  brew install node
  brew install caskroom/cask/brew-cask
  brew cask install virtualbox
  brew cask install xquartz
  brew cask install qlcolorcode
  brew cask install qlmarkdown
  brew cask install qlstephen
  brew cask install quicklook-csv
  brew cask install quicklook-json
  brew cask install qlimagesize
  brew cask install cyberduck
  brew cask install the-unarchiver
  brew cask install mendeley-desktop
  brew cask install google-chrome
  brew cleanup
  qlmanage -r
}

# Install python packages
pip install lxml
pip install cheetah
pip install pandas
pip install scikit-learn
pip install statsmodels
pip install "ipython[notebook]"
pip install geopandas --pre  # does not install tools

# Install GnuRadio Stuff (not in Brewfile because of dependencies)
brew install gnuradio --with-brewed-python
brew install rtlsdr --HEAD
brew install gr-osmosdr --HEAD

git config --global user.name "Nicholas Johnson"
git config --global user.email "nejohnson2@gmail.com"
