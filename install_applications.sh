#!/bin/bash

# Update software
sudo softwareupdate --install --all

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
  brew install autoenv

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
  brew cask install google-chrome
  brew cask install sublime-text
  brew cask install mactex
  brew cask install evernote
  brew cask install microsoft-office # office for mac 2011
  brew cask install osxfuse
  brew cask install sshfs
  brew cask install flickr-uploadr
  brew cask install wireshark
  brew cask install suspicious-package

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
pip install virtualenv
pip install pandoc
pip install Flask

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
