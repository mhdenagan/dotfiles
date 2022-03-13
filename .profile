[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:$HOME/.scripts
export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="brave"

# if [[ "$(tty)" = "/dev/tty1" ]]; then
#        pgrep bspwm || startx
#fi
