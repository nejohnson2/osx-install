# nejohnson2's macOS Sierra setup

Shell scripts for automated macOS machine setup. Requires [Xcode](https://developer.apple.com/downloads) and a network connection.

## Usage

Edit any of the files in to your liking and then run `setup.sh` in your terminal

`setup.sh` will ask for your root password, and then:

  1. Apply system preferences (like hostname) (`preferences.sh`)
  2. Install commandline and gui software (specified in `Brewfile` and `Caskfile`)


## Software

`install_applications.sh` installs [XCode Command Line Tools](), [Homebrew](http://brew.sh) and then the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask):

### commandline software

[git](git-scm.com)
, [nodejs](nodejs.org)
, [python](python.org)
, [matplotlib](matplotlib.org)
, [numpy](numpy.org)
, [ipython notebook](ipython.org)
, [pandas](pandas.pydata.org)
, [scikit-learn](scikit-learn.org)
, [statsmodels](statsmodels.sourceforge.net)
, [geopandas](geopandas.org)
, [scapy](http://www.secdev.org/projects/scapy/)
, [heroku-toolbelt](https://toolbelt.heroku.com)
, [wget](http://www.gnu.org/software/wget/)
, [gnuradio](gnuradio.org)
, [rtlsdr](rtlsdr.org)
, [gr-osmosdr](http://sdr.osmocom.org/trac/wiki/GrOsmoSDR)



### gui software

[quicklook plugins](github.com/sindresorhus/quick-look-plugins)
, [Virtualbox](virtualbox.org)
, [XQuartz](xquartz.macosforge.org)
, [Mendeley Desktop](https://www.mendeley.com/)
, [Cyberduck](https://cyberduck.io/)
, [The Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver.html)


## Preinstall Checklist

* Login to [App Store](www.apple.com/macosx/whats-new/app-store.html) and install:
  * [XCode]()

## Postinstall Checklist
* Import Bookmarks to Chrome
