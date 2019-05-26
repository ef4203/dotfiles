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
    .bash_logout
    .bashrc
    .vimrc
    .profile
)

# Softlink all dotfiles
for dotfile in ${dotfiles[*]}; do
    make_home_symlink $dotfile $dotfile
done

# Speicifc to WSL and tty login setups
make_home_symlink .profile .bash_profile

# Install vundle, if missing
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle.vim..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "IMPORTANT: don't forget to run :PluginInstall first time you open vim"
fi

echo "Installing gitconfig"

# If there is no gitconfig, just copy
if [ ! -f ~/.gitconfig ]; then
    cp .gitconfig ~/.gitconfig
    echo "Don't forget to set your git stuff, eg. user.name and user.email"
else
    # Append to gitconfig otherwhise
    if [ ! $(grep alias ~/.gitconfig) ]; then
        cat .gitconfig >> ~/.gitconfig
    else
        echo "IMPORTANT: There's already aliases in your gitconfig, manual intervention required."
    fi
fi

