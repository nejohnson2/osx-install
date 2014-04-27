## Block malware
sudo curl 'winhelp2002.mvps.org/hosts.txt' -a -o /private/etc/hosts

# Install Inconsolata font
curl http://levien.com/type/myfonts/Inconsolata.otf -o ${HOME}/Library/Fonts/Inconsolata.otf

## Setup iTerm2
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/jedahan/.iterm2"

## Install prezto
local pdir="${ZDOTDIR:-$HOME}/.zprezto"
git clone --recursive https://github.com/sorin-ionescu/prezto.git $pdir
pushd $pdir/modules
git submodule add https://github.com/sindresorhus/pure.git pure
ln -s $pdir/modules/pure/pure.zsh prompt/functions/prompt_pure_setup
popd

## Symlink dotfiles
homesick clone jedahan/dotfiles && homesick symlink jedahan/dotfiles

## Set shell to zshell
chsh -s /bin/zsh

## Set bootlogo
sudo cp boot/{BootLogo.png,DefaultDesktop.jpg} /System/Library/CoreServices/

## Set *.dev to resolve to 127.0.0.1
brew install dnsmasq
echo 'address=/.dev/127.0.0.1' > $(brew --prefix)/etc/dnsmasq.conf
sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
sudo mkdir -v /etc/resolver
sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/dev'
