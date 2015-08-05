# nejohnson's Yosemite setup

Shell scripts for automated OSX machine setup. Requires [Xcode](https://developer.apple.com/downloads) and a network connection.

## Usage

Edit any of the files in to your liking and then run `engage.sh` in your terminal

`engage.sh` will ask for your root password, and then:

  1. Apply system preferences (like hostname) (`preferences.sh`)
  2. Install commandline and gui software (specified in `Brewfile` and `Caskfile`)


## Software

`applications.sh` installs the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask):

### commandline software

[aircrack-ng](aircrack-ng.org)
, [android-sdk](developer.android.com/index.html)
, [boot2docker](github.com/boot2docker/boot2docker-cli)
, [dnsmasq](thekelleys.org.uk/dnsmasq/doc.html)
, [fceux](www.fceux.com)
, [git](git-scm.com)
, [horndis](joshuawise.com/horndis)
, [hub](hub.github.com)
, [jq](stedolan.github.io/jq)
, [keybase](keybase.io)
, [mtr](www.bitwizard.nl/mtr)
, [netcat6](deepspace6.net/projects/netcat6.html)
, [neovim](neovim.io)
, [ngrep](ngrep.sourceforge.net)
, [nmap](nmap.org)
, [nodejs](nodejs.org)
, [python](python.org)
, [tcpdump](tcpdump.org)
, [the_silver_searcher](github.com/ggreer/the_silver_searcher)
, [trash](hasseg.org/trash)
, [watch](procps.sourceforge.net)
, [vice](vice-emu.sourceforge.net)
, [youtube-dl](rg3.github.io/youtube-dl)
, [zsh](zsh.org)

### gui software

[quicklook plugins](github.com/sindresorhus/quick-look-plugins)
, [Alfred](alfredapp.com)
, [Android File Transfer](android.com/filetransfer)
, [Arduino](arduino.cc)
, [Atom](atom.io)
, [Chromium](www.chromium.org)
, [Dash](kapeli.com/dash)
, [Disk Inventory X](www.derlien.com)
, [Dropbox](dropbox.com)
, [Firefox](mozilla.org)
, [Filckr Uploadr](www.flickr.com/tools)
, [Fritzing](fritzing.org)
, [Hex Fiend](ridiculousfish.com/hexfiend)
, [Horndis](joshuawise.com/horndis)
, [iTerm2](iterm2.com)
, [Java](www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
, [mini vMac](www.gryphel.com/c/minivmac)
, [mpv](mpv.io)
, [Spotify](spotify.com)
, [Steam](steampowered.com)
, [Transmission](transmissionbt.com)
, [Virtualbox](virtualbox.org)
, [Vlc](vlc.org)
, [Wireshark](wireshark.org)
, [XQuartz](xquartz.macosforge.org)


## Preinstall Checklist

* Generate new ssh keys
* Login to [App Store](www.apple.com/macosx/whats-new/app-store.html) and install:
  * [XCode]()

## Postinstall Checklist
* Import Bookmarks to Chrome
