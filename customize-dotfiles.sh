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

