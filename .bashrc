# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

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

# More colors
use_color=true

# Colorize bash prompt
PS1="\e[1;35mTea \e[0;32m[\w]$\e[0m "

# Windows Only Settings
case "MING" in "$uname"*)
    # Make for windows
    alias make="mingw32-make"

    # Use open to open a direcotry in the file explorer
    alias open='explorer.exe'
esac

alias cp="cp -i"        # Confirm overwrite
alias df="df -h"        # Humand reabable
alias free="free -m"    # Size in MB
alias more=less       # If we want to see _more_ we use less

# Typo prevention
alias sl="ls"
alias l="ls"
alias s="ls"
