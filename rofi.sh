# !/bin/bash
if [ -z $1 ]; then
	rofi -show drun -width 15 -font "Montserrat Alternates Medium 10" -bw 2 -location 5 -yoffset -38 -xoffset -8 -icon-theme "Papirus-dark" -terminal st -show-icons -drun-display-format "{name}"
else
	rofi -show drun -width 15 -font "Montserrat Alternates Medium 10" -bw 2 -location 1 -yoffset $2 -xoffset $1 -icon-theme "Papirus-dark" -terminal st -show-icons -drun-display-format "{name}"
fi
