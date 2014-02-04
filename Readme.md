# jedahan's Mavericks setup

Shell scripts for automated OSX machine setup.

`./engage.sh` will set osx preferences, install applications, install dotfiles and set application defaults. You can do each of these individually with `preferences.sh`, `applications.sh`, `dotfiles.sh`, and `defaults.sh`. You will want to change some of the variables in `preferences.sh` (like your hostname), and `defaults.sh` (like your homesick respositoy).

## Features

* Configure default OSX settings with `defaults.sh` 
* Install the following software through [Homebrew](http://brew.sh) and [Homebrew Cask](https://github.com/phinze/homebrew-cask) with `applications.sh`:
    * [Zsh](www.zsh.org/‎)
    * [Prezto](https://github.com/sorin-ionescu/prezto)
    * [Git](http://git-scm.com)
    * [Hub](https://github.com/defunkt/hub)
    * [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
    * [ImageMagick](http://www.imagemagick.org)
    * [Node.js](http://nodejs.org)
    * [Dotfiles](https://github.com/jedahan/dotfiles)
    * [Redis](http://redis.io)
    * [lnav](http://braumeister.org/formula/lnav)
* Downloads, installs, and configures software applications generally not in the [App Store](http://www.apple.com/macosx/whats-new/app-store.html):
    * [Dropbox](https://www.dropbox.com)
    * [Knox](https://agilebits.com/knox)
    * [iTerm2](http://www.iterm2.com)
    * [Sublime Text 3](http://www.sublimetext.com/3)
    * [Alfred](http://www.alfredapp.com)
    * [TextExpander](http://www.smilesoftware.com/TextExpander)
    * [Path Finder](http://cocoatech.com)
    * [Firefox](http://www.mozilla.com/en-US/firefox)
    * [VLC](http://www.videolan.org/vlc)
    * [Cheatsheet](http://www.cheatsheetapp.com/CheatSheet)
    * [VirtualBox](https://www.virtualbox.org)
    * [App Cleaner](http://www.freemacsoft.net/appcleaner)
    * [Hazel](http://www.noodlesoft.com/hazel.php)
    * [Air Display](http://avatron.com/apps/air-display)

# Requirements

0. [OSX](http://www.apple.com/osx)
1. [OSX Software Updates](http://www.apple.com/osx)
2. [Xcode](https://developer.apple.com/downloads)

Current Version:

    git clone git://github.com/jedahan/osx.git
    cd osx

# Usage

Edit any of the *.sh files in the scripts folder to your liking and then open a terminal window to execute the following command:

    ./engage.sh

Running the engage.sh script will ask for your root password, and then:

    b: Apply basic system settings.
    h: Install Homebrew software (i.e. non-GUI, command line interfaces).
    a: Install application software (i.e. GUI-enabled).
    x: Install application extensions (i.e. enhancements, add-ons, plug-ins, etc.)
    d: Apply system and application defaults.
    p: Apply software preferences.
    s: Setup installed software.

## Customization

While the default settings for this project are opinionated and tailored for my specific setup, you can easily fork
this project and customize the settings to your specific environment. Start by editing the files located in the
settings project:

* settings/settings.sh = Defines settings for machine name, applications, extensions, versions, paths, etc.

## App Store Software

I also recommend installing the following software found via the
[App Store](http://www.apple.com/macosx/whats-new/app-store.html):

* [Twitter](https://itunes.apple.com/us/app/twitter/id409789998?mt=12)

## Post Install Checklist

The following is a checklist of additional steps worth completing after the scripts have been executed:

* Configure Security & Privacy:
    * Require password immediately after sleep or screen saver begins.
    * Show a message when the screen is locked. Example: "<twitter> | <email> | <phone>"
    * Enable FileVault.
* Configure Wi-Fi.
* Configure work email and calendar accounts.
* Configure previously installed applications.

# Resources

* [Boxen](http://boxen.github.com) - GitHub's automated development setup.
* [Mathias Bynens' OSX Defaults](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) - OSX/application defaults.
