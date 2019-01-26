# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Disable ctl-s and ctl-q which pauses stdin
stty -ixon

# Auto cd into directory
shopt -s autocd

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
# PS1='\[\033[01;32m\][\u@\h \[\033[01;34m\]\W\[\033[01;32m\]]\[\033[01;34m\]\$\[\033[00m\] '
PS1='[\h \W] '
# Aliases
alias cp="cp -i"        # Confirm overwrite
alias df="df -h"        # Humand reabable
alias free="free -m"    # Size in MB
alias more=less         # If we want to see _more_ we use less
alias r=ranger          # Open ranger really fast
alias pdf=zathura       # My prefered pdf reader

# Typo prevention
alias sl="ls"
alias l="ls"
alias s="ls"

# Youtube aliases
alias yt="youtube-dl --add-metadata -ic" # Download video
alias yta="yt -x -f bestaudio/best"      # Download only audio
alias YT="youtube-viewer"                # View youtube video

