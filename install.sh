#! /bin/bash

install () {
	# $1 = Name
	# $2 = Apple Curl Name

	curl https://devimages-cdn.apple.com/design/resources/download/$2.dmg -o /tmp/$1.dmg > /dev/null
	7z x /tmp/$1.dmg "-o/tmp"
	7z x /tmp/$1/*.pkg "-o/tmp"
	7z x /tmp/Payload\~ "-o/tmp"
	cp -rf /tmp/Library/Fonts/* ~/.fonts/
	rm -rf /tmp/$1.dmg /tmp/$1 /tmp/Library /tmp/Payload~
}

clear
tput civis

mkdir -p ~/.fonts
sudo apt-get install --no-upgrade dialog curl p7zip

fonts=$(dialog --checklist "Which fonts do you want to install?" 12 39 1 \
"New York" "" on \
"SF Arabic" "" on \
"SF Compact" "" on \
"SF Mono" "" on \
"SF Pro" "" on 2>&1 >/dev/tty)

clear
tput cnorm

if [[ " ${fonts[*]} " =~ " \"New York\" " ]]
then
	install NYFonts NY
fi

if [[ " ${fonts[*]} " =~ " \"SF Arabic\" " ]]
then
	install SFArabicFonts SF-Arabic
fi

if [[ " ${fonts[*]} " =~ " \"SF Compact\" " ]]
then
	install SFCompactFonts SF-Compact
fi

if [[ " ${fonts[*]} " =~ " \"SF Mono\" " ]]
then
	install SFMonoFonts SF-Mono
fi

if [[ " ${fonts[*]} " =~ " \"SF Pro\" " ]]
then
	install SFProFonts SF-Pro
fi
