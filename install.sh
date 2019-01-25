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
    .bash_logout
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
    echo "IMPORTANT: don't forget to run :PluginInstall first time you open vim"
fi

# Additional dotfiles
printf "Installing i3 config...\n"
ln -s `pwd`/.config/i3/config ~/.config/i3/config
printf "Installing i3status config...\n"
ln -s `pwd`/.config/i3status/config ~/.config/i3status/config
printf "Installing ranger config...\n"
ln -s `pwd`/.config/ranger/rc.conf ~/.config/ranger/rc.conf
printf "Installing mpv config...\n"
ln -s `pwd`/.config/mpv/input.conf ~/.config/mpv/input.conf
printf "Installing zathura config...\n"
ln -s `pwd`/.config/zathura/zathurarc ~/.config/zathura/zathurarc

