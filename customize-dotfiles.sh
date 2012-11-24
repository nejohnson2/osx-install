## Shell

# Install prezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# Use zsh dotfiles
homesick clone jedahan/dotfiles && homesick symlink jedahan/dotfiles
# Make zsh default shell
chsh -s /bin/zsh

## Font

# Install Inconsolata
curl http://levien.com/type/myfonts/Inconsolata.otf -o ${HOME}/Library/Fonts/Inconsolata.otf

## Terminal

# Use Monokai theme
curl https://raw.github.com/stephenway/Monokai.terminal/master/Monokai.terminal -o ${HOME}/Downloads/Monokai.terminal
open ${HOME}/Downloads/Monokai.terminal
sleep 1
defaults write com.apple.terminal "Default Window Settings" -string "Monokai"
defaults write com.apple.terminal "Startup Window Settings" -string "Monokai"

## Sublime Text 2

# Symlink subl script
ln -s ~/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin

