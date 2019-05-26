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
alias ccat="highlight --out-format=ansi"

# More colors
use_color=true

# Colorize bash prompt, depending on the OS
if [[ "$OS" =~ "NT" ]]; then
    # bash prombt for Git bash for Windows
    PS1='\[\033[01;32m\][bash \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '
else
    # Anything else
    PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '
fi

# Aliases
alias cp="cp -i"         # Confirm overwrite
alias df="df -h"         # Humand reabable
alias free="free -m"     # Size in MB
alias more=less          # If we want to see _more_ we use less

alias r=ranger          # Open ranger really fast
alias g=git             # less typing
alias v=vim             # Super fast vim

alias sl="ls"           # Typo prevention
alias l="ls"            # Typo prevention
alias s="ls"            # Typo prevention

alias claer="clear"     # Typo prevention
alias clera="clear"     # Typo prevention
alias clea="clear"      # Typo prevention

# LINUX DESTOP SPECIFIC STUFF :norm vld

# alias pdf=zathura       # My prefered pdf reader
# alias pacbloat="pacman -Qtdq"  # Finds orphan packages
# alias pacbig="pacman -Qi | awk '/^Name/{name=\$3} /^Installed Size/{print \$4\$5, name}' | sort -hr | sed '20q'"
# alias yt="youtube-dl --add-metadata -ic" # Download video
# alias yta="yt -x -f bestaudio/best"      # Download only audio
# alias YT="youtube-viewer"                # View youtube video
