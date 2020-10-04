#!/bin/bash
if [[ $1 = "-lr" || $1 = "-le" ]]; then
	echo "Please insert the link first, then the flags."
else
	function binary() {
		if ! which streamlink > /dev/null; then
			echo "Streamlink binary not found, attempting python module..."
			s="python3 -m streamlink"
		else
			s="streamlink"
		fi
	}
	binary
	if [ -z $2 ]; then
		${s} "$1" best --player mpv
	else
		if [[ $2 = "-lr" ]]; then
            if [[ $3 = "-o" ]]; then
	            ${s} "${1}" best --hls-live-restart -o "rec-$(date +%d%m%y-%H%M%S).ts"
            else
	            ${s} "${1}" best --hls-live-restart --player mpv
            fi
		elif [[ $2 = "-le" ]]; then
            if [[ $4 = "-o" ]]; then
	            ${s} "${1}" best --hls-live-edge "${3}" -o "rec-$(date +%d%m%y-%H%M%S).ts"
            else
	            ${s} "${1}" best --hls-live-edge "${3}" --player mpv
            fi
		elif [[ $2 = "-o" ]]; then
	    		${s} "${1}" best -o "rec-$(date +%d%m%y-%H%M%S).ts"
		fi	
	fi
fi
