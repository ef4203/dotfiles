# Fix my stuff
xrandr --output DisplayPort-0 --right-of HDMI-A-0 --auto
xinput set-prop 9 "libinput Accel Speed" -0.95

exec i3
