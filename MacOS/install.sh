#!/bin/bash

# Create symlinks for dotfiles
ln -s -v ${PWD}/.vimrc ~/.vimrc
ln -s -v ${PWD}/.ideavimrc ~/.ideavimrc
ln -s -v ${PWD}/.config/fish/config.fish ~/.config/fish/config.fish
ln -s -v ${PWD}/.config/code/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -s -v ${PWD}/.bin/ ~
