#!/bin/bash
make_home_symlink() {
    printf "Installing %s...\n" $1
    unlink ~/$2 2>/dev/null
    ln -s `pwd`/$1 ~/$2 2>/dev/null
}

dotfiles=(
    .bash_logout
    .bashrc
    .vimrc
    .profile
)

for dotfile in ${dotfiles[*]}; do
    make_home_symlink $dotfile $dotfile
done

# Might be redundant on some systems that use tty login
make_home_symlink .profile .bash_profile

if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    echo "Installing Vundle.vim..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "IMPORTANT: don't forget to run :PluginInstall first time you open vim"
fi

echo "Installing gitconfig..."
if [ ! -f ~/.gitconfig ]; then
    cp .gitconfig ~/.gitconfig
    echo "Don't forget to set your git stuff, eg. user.name and user.email"
else
    if [ ! $(grep alias ~/.gitconfig) ]; then
        cat .gitconfig >> ~/.gitconfig
    else
        echo "IMPORTANT: There's already aliases in your gitconfig, manual intervention required."
    fi
fi

echo "Done!"
