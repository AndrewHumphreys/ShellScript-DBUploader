# File: gn-sync.sh
# Programmer: A Humphreys
# Created: 6 October 2016
# Description: Automation script for geeknote 2-way sync
# Modified: 6 October 2016

NOTEBOOK="$1"

if [ $NOTEBOOK = labcode ]

	then
		# Syncing ~/COMP1004/lab-code with COMP1004-code notebook
		gnsync --path ~/COMP1004/lab-code/ --logpath ~/.log/geeknote.log --format markdown --notebook "COMP1004-code" --two-way TWO_WAY

	# elif [ $NOTEBOOK = download ]
	# then
		# Download Command
	#	rm -r ~/COMP1004
	#	~/Downloads/Dropbox-Uploader/dropbox_uploader.sh -p -h download /COMP1004 ~/

	else
		printf "Incorrect option\n"
	exit 1

fi
