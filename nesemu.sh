# File: nesemu.sh
# Programmer: A Humphreys
# Created: 21 September 2016
# Description: Script for automating mednafen emulator
# Modified: 30 September 2016

GAME="$1"

if [ $GAME = bionic ]

	then
		# Bionic Commando
		mednafen -fs 1 ~/Roms/Bionic_Commando_USA.nes

	elif [ $GAME = smb1 ]
	then
		# Super Mario Bros & Duck Hunt
		mednafen -fs 1 ~/Roms/Super_Mario_Bros-Duck_Hunt_USA.nes

	elif [ $GAME = smb2 ]
	then
		# Super Mario Bros 2
		mednafen -fs 1 ~/Roms/Super_Mario_Bros_2_USA.nes

	elif [ $GAME = smb3 ]
	then
		# Super Mario Bros 3
		mednafen -fs 1 ~/Roms/Super_Mario_Bros_3_USA.nes

	elif [ $GAME = null ]
	then
		printf "+---------------------------------+\n"
		printf "+-- Your options are:\n"
		printf "+-- 'bionic' -> Bionic Commando\n"
		printf "+-- 'smb1' -> Super Mario Bros.\n"
		printf "+-- 'smb2' -> Super Mario Bros. 2\n"
		printf "+-- 'smb3' -> Super Mario Bros. 3\n"
		printf "+---------------------------------+\n"


	else
		printf "(Incorrect option)"

	exit 1

fi
