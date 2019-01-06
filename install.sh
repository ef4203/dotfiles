#!/bin/bash

make_home_symlink() {
    printf "Installing %s...\n" $1

    # Remove pre-existing symlink
    unlink ~/$2 2>/dev/null

    # Make new symlink
    ln -s `pwd`/$1 ~/$2 2>/dev/null
}

# Dotfiles in home directory
dotfiles=(
.bash_profile
.bashrc
.vimrc
.Xdefaults
.xinitrc
)

# Copy all dotfiles
for dotfile in ${dotfiles[*]}; do
    make_home_symlink $dotfile $dotfile
done

# Install vundle, if missing
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle.vim..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

if [ -d ~/.config/zathura ]; then
    echo "Zathura install detected, installing config..."
    make_home_symlink .config/zathura/zathurarc ~/.config/zathura/zathurarc
fi

if [ -d ~/.config/ranger ]; then
    echo "Ranger install detected, installing config..."
    make_home_symlink .config/ranger/rc.conf ~/.config/ranger/rc.conf
    cp .config/ranger/scope.sh ~/.config/ranger/scope.sh
fi
