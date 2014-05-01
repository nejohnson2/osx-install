# jedahan's Mavericks setup

Shell scripts for automated OSX machine setup. Requires [Xcode](https://developer.apple.com/downloads) and a network connection.

## Usage

Edit any of the *.sh files in the scripts folder to your liking and then run `engage.sh` in your terminal

`engage.sh` will ask for your root password, and then:

  1. Apply system preferences (like hostname)
  2. Install commandline and gui software
  3. Install application extensions, add-ons, and plug-ins
  4. Apply application preferences

Neat things about this setup:
 - shell will be set to [zsh](zsh.org) with [prezto](github.com/sorin-ionescu/prezto)
 - *.dev will always resolve to 127.0.0.1 (thanks dnsmasq!)

## Software

`applications.sh` installs the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask):

### commandline software

[android-sdk](developer.android.com/index.html)
, [coffee-script-redux](http://michaelficarra.github.io/CoffeeScriptRedux)
, [deliver](github.com/gerhard/deliver)
, [dnsmasq](thekelleys.org.uk/dnsmasq/doc.html)
, [git](git-scm.com)
, [gist](github.com/defunkt/gist)
, [hub](hub.github.com)
, [imagemagick](imagemagick.org)
, [java](java.com)
, [jq](stedolan.github.io/jq)
, [mongodb](mongodb.org)
, [nmap](nmap.org)
, [node](nodejs.org)
, [opencv](opencv.org)
, [python](python.org)
, [redis](redis.io)
, [ruby](ruby-lang.org)
, [ssh-copy-id](openssh.com)
, [the_silver_searcher](github.com/ggreer/the_silver_searcher)
, [trash](hasseg.org/trash)
, [watch](procps.sourceforge.net)
, [zsh](zsh.org)

### gui software

quicklook plugins
, [Alfred](alfredapp.com)
, [Arduino](arduino.cc)
, [atom][atom.io]
, [Cheatsheet](cheatsheetapp.com)
, [Dogecoin](github.com/dogecoin/dogecoin)
, [Dropbox](dropbox.com)
, [Firefox Beta](mozilla.org/beta)
, [iTerm2 Beta](iterm2.com)
, [Skype](skype.com)
, [Transmission](transmissionbt.com/)
, [Virtualbox](virtualbox.org)
, [Wireshark](wireshark.org)
, [XQuartz](xquartz.macosforge.org)

### dotfiles

Sets up [My Dotfiles](https://github.com/jedahan/dotfiles), and defaults

## Post Install Checklist

* Generate new ssh keys
* Install [MacPass](https://github.com/mstarke/MacPass)
* Install [App Store](http://www.apple.com/macosx/whats-new/app-store.html) software:
    * [Textual](https://itunes.apple.com/us/app/textual-irc-client/id403012667?mt=12)
    * [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12)
    * [Cinch](https://itunes.apple.com/us/app/cinch/id412529613?mt=12)
    * [Vox](https://itunes.apple.com/us/app/vox/id461369673?mt=12)
* Install [alfred powerpack](https://mail.google.com/mail/u/0/#search/alfred+powerpack)
* Install [obsidian menu bar](obsidianmenubar.com)
    * Customize dropbox and twitter icons
    * Add .menu to login items
