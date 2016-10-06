# File: gn-sync.sh
# Programmer: A Humphreys
# Created: 6 October 2016
# Description: Automation script for geeknote 2-way sync
# Modified: 6 October 2016

NOTEBOOK="$1"

if [ $NOTEBOOK = upload ]

	then
		# Upload Command
		~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h upload ~/COMP1004 /

	elif [ $NOTEBOOK = download ]
	then
		# Download Command
		rm -r ~/COMP1004
		~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h download /COMP1004 ~/

	else
		printf "(Incorrect option)"
	exit 1

fi
