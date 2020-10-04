#! /bin/sh
if [ -z $1 ]; then
	rofi -show run -width 15 -bw 2 -location 5 -yoffset -38 -xoffset -8 -icon-theme "Papirus-dark" -terminal st
else
	rofi -show run -width 15 -bw 2 -location 1 -yoffset $2 -xoffset $1 -icon-theme "Papirus-dark" -terminal st
fi

