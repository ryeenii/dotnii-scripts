# /bin/sh
if [ -z $1 ]; then
		maim -s -u | xclip -selection clipboard -t image/png -i
else
		maim -s -u -d 5 | xclip -selection clipboard -t image/png -i
fi
