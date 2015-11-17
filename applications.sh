# Set Terminal Preferences
touch ~/.bash_profile
echo "export PS1=\"Gioia : \"" >> ~/.bash_profile
echo "export CLICOLOR=1" >> ~/.bash_profile
source ~/.bash_profile

# Make Literature Folder
mkdir ~/Documents/Literature

# Update software
sudo softwareupdate --install --all

# Install  Commandline tools
# This installs the latest version which may not be desirable for gnuradio!
xcode-select --install
xcodebuild -license

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew -v && {
  brew update
  brew upgrade
  
  brew install python
  brew install gcc
  brew install swig
  brew install pkg-config
  brew install git
  brew install wget
  brew install node
  brew install heroku-toolbelt
  brew install caskroom/cask/brew-cask
  brew cask install --appdir="~/Applications" virtualbox
  brew cask install --appdir="~/Applications" xquartz
  brew cask install --appdir="~/Applications" qlcolorcode
  brew cask install --appdir="~/Applications" qlmarkdown
  brew cask install --appdir="~/Applications" qlstephen
  brew cask install --appdir="~/Applications" quicklook-csv
  brew cask install --appdir="~/Applications" quicklook-json
  brew cask install --appdir="~/Applications" qlimagesize
  brew cask install --appdir="~/Applications" cyberduck
  brew cask install --appdir="~/Applications" the-unarchiver
  brew cask install --appdir="~/Applications" mendeley-desktop
  brew cask install --appdir="~/Applications" google-chrome
  brew cask install --appdir="~/Applications" sublime-text
  brew cask install --appdir="~/Applications" mactex
  brew cask install --appdir="~/Applications" evernote
  brew cask install --appdir="~/Applications" microsoft-office # office for mac 2011
  brew cask install --appdir="~/Applications" osxfuse
  brew cask install --appdir="~/Applications" sshfs
  brew cask install --appdir="~/Applications" flickr-uploadr
  brew cask install --appdir="~/Applications" wireshark
  brew cask install --appdir="~/Applications" google-drive
  brew cleanup
  qlmanage -r
}

# Install python packages
pip install lxml
pip install cheetah
pip install sphinx
pip install numpy
pip install matplotlib
pip install pillow
pip install pandas
pip install scipy
pip install scapy
pip install scikit-learn
pip install statsmodels
pip install "ipython[all]"
pip install git+git://github.com/geopandas/geopandas.git

# Install SDR Stuff
export PKG_CONFIG_PATH="/usr/X11/lib/pkgconfig"
brew install wxpython

brew tap andresv/homebrew-gnuradio
brew install gnuradio --with-qt

brew install hackrf
brew install bladerf --HEAD
brew install rtlsdr --HEAD

brew install gr-osmosdr gr-baz --HEAD
mkdir ~/.gnuradio
touch ~/.gnuradio/config.conf

echo "[grc]" >> ~/.gnuradio/config.conf
echo "local_blocks_path=/usr/local/share/gnuradio/grc/blocks" >> ~/.gnuradio/config.conf

brew install gqrx --HEAD

brew tap dholm/homebrew-sdr
brew install libosmocore --HEAD # dependencies of gr-gsm
brew install gr-gsm --HEAD 

# In order to install gr-gsm properly, I needed to copy the 
# grc block rtlsdr_source.xml to the appropriate folder.  Gnuradio-companion
# still throws a bunch of error but everything works fine.
# cp /usr/local/share/gnuradio/grc/blocks/rtlsdr_source.xml `/usr/local/Cellar/gnuradio/3.7.7.1/share/gnuradio/grc/blocks/rtlsdr_source.xml

brew linkapps

git config --global user.name "Nicholas Johnson"
git config --global user.email "nejohnson2@gmail.com"
