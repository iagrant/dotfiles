exec i3
exec xrandr -s 1920x1080
exec feh --random --bg-scale /usr/share/archlinux/wallpaper/*
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
