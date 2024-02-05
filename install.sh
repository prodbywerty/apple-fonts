#! /bin/bash

font () {
	echo -en "  $1\r"
	read -sN 1

	if [ "$REPLY" == "y" ]
	then
		echo "+"
		cp -r "$1" ~/.local/share/fonts/
	else
		echo "-"
	fi
}

mkdir -p ~/.local/share/fonts/

echo "[y] Install"
echo "[n] Skip"
echo

font "New York"
font "San Francisco Arabic"
font "San Francisco Armenian"
font "San Francisco Compact"
font "San Francisco Georgian"
font "San Francisco Hebrew"
font "San Francisco Mono"
font "San Francisco Pro"
echo "Done"