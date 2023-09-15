#!/bin/bash
make_home_symlink() {
    printf "Installing %s...\n" $1
    ln -sf "$PWD/$2" "$HOME/$2" 2>/dev/null
}

dotfiles=(
   .vimrc
   .config/fish
)

for dotfile in ${dotfiles[*]}; do
    make_home_symlink $dotfile $dotfile
done

echo "Installing gitconfig..."
if [ ! -f ~/.gitconfig ]; then
    cp .gitconfig ~/.gitconfig
    echo "Don't forget to set your git stuff, eg. user.name and user.email"
else
    echo "IMPORTANT: There's already aliases in your gitconfig, manual intervention required."
fi

echo "Done!"
