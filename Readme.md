# jedahan's Mavericks setup

Shell scripts for automated OSX machine setup. Requires [Xcode](https://developer.apple.com/downloads) and a network connection.

## Usage

Edit any of the files in to your liking and then run `engage.sh` in your terminal

`engage.sh` will ask for your root password, and then:

  1. Apply system preferences (like hostname) (`preferences.sh`)
  2. Install commandline and gui software (specified in `Brewfile` and `Caskfile`)
  3. Install application extensions, add-ons, and plug-ins (`dotfiles.sh`)
  4. Apply application preferences (`defaults.sh`)

Neat things about this setup:
 - shell will be set to [zsh](zsh.org) with [prezto](github.com/sorin-ionescu/prezto)
 - *.dev will always resolve to 127.0.0.1 (thanks dnsmasq!)

## Software

`applications.sh` installs the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask):

### commandline software

[aircrack-ng](aircrack-ng.org)
, [android-device-filetransfer](android.com/filetransfer)
, [android-sdk](developer.android.com/index.html)
, [cheat](github.com/chrisallenlane/cheat)
, [coffee-script-redux](http://michaelficarra.github.io/CoffeeScriptRedux)
, [deliver](github.com/gerhard/deliver)
, [dnsmasq](thekelleys.org.uk/dnsmasq/doc.html)
, [git](git-scm.com)
, [gpg](gnupg.org)
, [horndis](joshuawise.com/horndis)
, [hub](hub.github.com)
, [java](java.com)
, [jq](stedolan.github.io/jq)
, [keybase](keybase.io)
, [macspoof](github.com/feross/spoof)
, [mongodb](mongodb.org)
, [ngrep](ngrep.sourceforge.net)
, [nmap](nmap.org)
, [node](nodejs.org)
, [opencv](opencv.org)
, [python](python.org)
, [redis](redis.io)
, [ruby](ruby-lang.org)
, [tcpdump](tcpdump.org)
, [the_silver_searcher](github.com/ggreer/the_silver_searcher)
, [trash](hasseg.org/trash)
, [watch](procps.sourceforge.net)
, [zsh](zsh.org)

### gui software

[quicklook plugins](github.com/sindresorhus/quick-look-plugins)
, [Alfred](alfredapp.com)
, [Arduino](arduino.cc)
, [atom](atom.io)
, [Cheatsheet](cheatsheetapp.com)
, [Dogecoin](github.com/dogecoin/dogecoin)
, [Dropbox](dropbox.com)
, [Firefox](mozilla.org)
, [iTerm2 Beta](iterm2.com)
, [Skype](skype.com)
, [Transmission](transmissionbt.com/)
, [Virtualbox](virtualbox.org)
, [Wireshark](wireshark.org)
, [XQuartz](xquartz.macosforge.org)

### dotfiles

Sets up [My Dotfiles](https://github.com/jedahan/dotfiles), and defaults

## Preinstall Checklist

* Generate new ssh keys
* Install [MacPass](https://github.com/mstarke/MacPass)
* Install [App Store](http://www.apple.com/macosx/whats-new/app-store.html) software:
    * [Textual](https://itunes.apple.com/us/app/textual-irc-client/id403012667?mt=12)
    * [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12)
    * [Cinch](https://itunes.apple.com/us/app/cinch/id412529613?mt=12)
    * [Vox](https://itunes.apple.com/us/app/vox/id461369673?mt=12)
* Install [obsidian menu bar](http://obsidianmenubar.com)
    * Customize dropbox and twitter icons
    * Add .menu to login items
* Install [Flavours](http://flavours.interacto.net/)
* Install [Alfred Twitch Tv](https://github.com/eusi/alfred2-twitch-streamer)
* Set xcode to 18 point [inconsolata](http://www.levien.com/type/myfonts/inconsolata.html), dusk
* Set textual to have command-[ switch across networks
* Add [webster's dictionary](http://jsomers.net/blog/dictionary)
* Login to [keybase](keybase.io)

## Postinstall Checklist
* Install [alfred powerpack](https://mail.google.com/mail/u/0/#search/alfred+powerpack)
