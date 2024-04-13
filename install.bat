# 2>nul & goto :main

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

exit

:font
<nul set/p=[s  %~1[u
choice /n > nul

if %ERRORLEVEL% == 1 (
	echo +
	copy "%~1" C:\Windows\Fonts
) else (
	echo -
)
goto :eof

:main
@echo off
echo [y] Install
echo [n] Skip
echo.

call :font "New York"
call :font "San Francisco Arabic"
call :font "San Francisco Armenian"
call :font "San Francisco Compact"
call :font "San Francisco Georgian"
call :font "San Francisco Hebrew"
call :font "San Francisco Mono"
call :font "San Francisco Pro"
echo Done