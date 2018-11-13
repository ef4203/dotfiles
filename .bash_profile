# ~/.bash_profile

[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERMINAL="urxvt"
export EDITOR="vim"

# Start graphical server on login
if [ "$(tty)" = "/dev/tty1" ]; then
	pgrep -x i3 || exec startx
fi
