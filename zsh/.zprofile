# starts xorg server on login
#if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
#  exec startx
#fi

#export XAUTHORITY="$HOME/.config/xorg/.Xauthority"

# switches to uswitches to us keyboard on login
loadkeys us

# auto update pacman on startup
pacman -Sy &
