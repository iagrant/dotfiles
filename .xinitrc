exec i3
exec xrandr -s 1920x1080
exec feh --bg-scale /usr/share/backgrounds/manjaro_arch.jpg
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
