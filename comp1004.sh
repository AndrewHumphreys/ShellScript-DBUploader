# File: comp1004.sh
# Programmer: A Humphreys
# Created: 21 September 2016
# Description: Unit COMP1004 Sync to dropbox script
# Modified: 7 October 2016

CHOICE="$1"
OPTION="$2"

if [ $CHOICE = upload ]

	then
		if [ $OPTION = all ]
		then
			# Upload all folders
			~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h upload ~/COMP1004 /

		elif [ $OPTION = lab-code ]
		then
			# Upload lab-code folder
			~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h upload ~/COMP1004/lab-code /COMP1004

		else
			printf "Incorrect folder option\n"

		exit 1

		fi

	elif [ $CHOICE = download ]
	then
		# Download Command
		rm -r ~/COMP1004
		~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h download /COMP1004 ~/

	else
		printf "Incorrect choice\n"
	exit 1

fi
