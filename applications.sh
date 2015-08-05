# Update software
sudo softwareupdate --install --all

# Install  Commandline tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Runs the Brewfile installation
brew -v && {
  brew update
  brew upgrade
  brew tap Homebrew/bundle
  brew bundle
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
pip install geopandas

# Install GnuRadio Stuff (not in Brewfile because of dependencies)
brew install gnuradio --with-brewed-python
brew install rtlsdr --HEAD
brew install gr-osmosdr --HEAD

# Set Terminal Preferences
export PS1="Gioia : "
export CLICOLOR=1

git config --global user.name "Nicholas Johnson"
git config --global user.email "nejohnson2@gmail.com"

wget "http://media.tannern.com/tanner.terminal" -P ~/Downloads