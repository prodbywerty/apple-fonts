#! /bin/bash

font () {
	read -N 1 -p "$1	" -s
	echo "$REPLY"

	if [ "$REPLY" == "y" ]
	then
		cp -r "$1" ~/.local/share/fonts/
	fi
}

mkdir -p ~/.local/share/fonts/

echo "[y] Install"
echo "[n]    Skip"
echo

font "New York"
font "San Francisco Arabic"
font "San Francisco Armenian"
font "San Francisco Compact"
font "San Francisco Georgian"
font "San Francisco Hebrew"
font "San Francisco Mono"
font "San Francisco Pro"
