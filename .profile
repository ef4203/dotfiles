# ~/.profile
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Include users private bin, if exists.
if [ -d "$HOME/bin" ]; then
	PATH="$HOME/bin:$PATH"
fi

export TERMINAL="urxvt"
export EDITOR="vim"
export BROWSER="firefox"
export READER="zathura"

