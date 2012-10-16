#!/bin/env zsh

git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
homesick clone jedahan/dotfiles && homesick symlink jedahan/dotfiles
chsh -s /bin/zsh