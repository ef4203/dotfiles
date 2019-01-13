# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

# Set variables
export PATH="$(du $HOME/.scripts/ | cut -f2 | tr '\n' ':')$PATH"
export TERMINAL="urxvt"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"

# Login Scripts
if [ "$(tty)" = "/dev/tty1" ]; then
    xinput set-prop 12 "libinput Accel Speed" -0.95
fi

