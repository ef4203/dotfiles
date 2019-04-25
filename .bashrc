# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable ctl-s and ctl-q which pauses stdin
stty -ixon

# Auto cd into directory
shopt -s autocd

# Vim mode for bash
set -o vi

# Ingore duplicatse in .bash_history
export HISTCONTROL=ignoredups

# Fix window size after each command
shopt -s checkwinsize

# Colorize ls
alias ls='ls --color=auto'

# Colorize grep
alias grep='grep --color=auto'

# Cat with syntax highlight
alias ccat="highlight --out-format=ansi" # Color cat - print file with syntax highlighting.

# More colors
use_color=true

# Colorize bash prompt
PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '
# PS1='\w '

# Aliases
alias cp="cp -i"         # Confirm overwrite
alias df="df -h"         # Humand reabable
alias free="free -m"     # Size in MB
alias more=less          # If we want to see _more_ we use less

# Pacman 
alias pacbloat="pacman -Qtdq"  # Finds orphan packages
alias pacbig="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5, name}' | sort -hr | sed '20q'"

# Shorter programs
alias r=ranger          # Open ranger really fast
alias pdf=zathura       # My prefered pdf reader
alias g=git             # less typing
alias v=vim             # Super fast vim

# Typo prevention
alias sl="ls"
alias l="ls"
alias s="ls"

alias claer="clear"
alias clera="clear"
alias clea="clear"

# Youtube aliases
alias yt="youtube-dl --add-metadata -ic" # Download video
alias yta="yt -x -f bestaudio/best"      # Download only audio
alias YT="youtube-viewer"                # View youtube video

