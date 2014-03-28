# jedahan's Mavericks setup

Shell scripts for automated OSX machine setup. Requires [Xcode](https://developer.apple.com/downloads) and a network connection.

## Usage

Edit any of the *.sh files in the scripts folder to your liking and then run `engage.sh` in your terminal

`engage.sh` will ask for your root password, and then:

  1. Apply system preferences (like hostname)
  2. Install commandline and gui software
  3. Install application extensions, add-ons, and plug-ins
  5. Apply application preferences

## Software

`applications.sh` installs the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask):

### commandline software

[Zsh](www.zsh.org/‎)
, [Prezto](https://github.com/sorin-ionescu/prezto)
, [Git](http://git-scm.com)
, [Hub](https://github.com/defunkt/hub)
, [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
, [ImageMagick](http://www.imagemagick.org)
, [Node.js](http://nodejs.org)
, [Redis](http://redis.io)
, [beets]()
, [deliver](https://github.com/gerhard/deliver)
, [mongodb](https://mongodb.org)
, [nmap](nmap.org)
, [trash](http://hasseg.org/trash/)
, [watch](http://procps.sourceforge.net/)
, [httpie](httpie.org), android-sdk
, [foreman]()
, [homesick]()
, [lolcat]()
, [lolcommits]()
, [LaunchRocket]()

### gui software

quicklook plugins
, alib1 screensaver
, [Dropbox](https://www.dropbox.com)
, [Knox](https://agilebits.com/knox)
, [iTerm2](http://www.iterm2.com)
, [Alfred](http://www.alfredapp.com)
, [Firefox](http://www.mozilla.com/en-US/firefox)
, [VLC](http://www.videolan.org/vlc)
, [Cheatsheet](http://www.cheatsheetapp.com/CheatSheet)
, [VirtualBox](https://www.virtualbox.org)
, [App Cleaner](http://www.freemacsoft.net/appcleaner)
, [arduino](arduino.cc)
, [chromium]()
, [daisydisk]()
, [dogecoin]()
, [skype]()
, [transmission]()
, [virtualbox]()
, [wireshark]()
, [xquartz]()

### dotfiles

Sets up [My Dotfiles](https://github.com/jedahan/dotfiles), and defaults

## Post Install Checklist

* Install [atom](http://atom.io)
* Install [App Store](http://www.apple.com/macosx/whats-new/app-store.html) software:
    * [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12)
    * [Vox](https://itunes.apple.com/us/app/vox/id461369673?mt=12)
* Require password immediately after sleep or screen saver begins in Security & Privacy
* Configure work email and calendar accounts
* Add [k](https://github.com/supercrabtree/k)
