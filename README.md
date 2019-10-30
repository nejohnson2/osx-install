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
, [python](python.org)
, [matplotlib](matplotlib.org)
, [numpy](numpy.org)
, [jupyter](jupyter.org)
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
, [Cyberduck](https://cyberduck.io/)
, [The Unarchiver](http://wakaba.c3.cx/s/apps/unarchiver.html)


## Preinstall Checklist

* Login to [App Store](www.apple.com/macosx/whats-new/app-store.html) and install:
  * [XCode]()

## Postinstall Checklist
* Import Bookmarks to Chrome

---

## Notes

### Configure ssh config
This is useful!  You can setup a config file in '''~/.ssh/''' which lets you simply type the server anem you want and the password instead of constantly putting in all of the server information. 

```shell
# contents of ~/.ssh/config
Host <name you want>
    HostName server.example.com
    User user
    IdentityFile ~/.ssh/github.key
```

Add to script like this:

```shell
cat >> ~/.ssh/config <<EOL
Host <name you want>
    HostName server.example.com
    User user
    IdentityFile ~/.ssh/github.key
EOL
```

### OSX Fuse
Fuse is awesome.  It lets you mount an ssh server on your computer.  Here is the [link](http://osxfuse.github.io/) to download it.  To use it:

```shell
cd ~/Desktop
mkdir BuildServer
sshfs <username>@<server address>:/path/to/mount BuildServer
```

### Changing Permissions

The ```-R``` changes everything in the folder to that permission setting.

```-``` is a file and ```d``` is a directory

Owner - Group - Users

r w x = 111 in binary = 7
r w - = 110 in binary = 6
r - x = 101 in binary = 5
r - - = 100 in binary = 4

```
chmod -R 700 <folder>
```

# MISC Bash Settings

To create a shortcut to CUSP RCF:

'''
alias cdf='ssh nj541@gw.cusp.nyu.edu -L 8000:compute.cusp.nyu.edu:8000'
alias compute='ssh nj541@gw.cusp.nyu.edu -t ssh compute'
alias cluster='ssh nj541@gw.cusp.nyu.edu -t ssh cluster'
'''
