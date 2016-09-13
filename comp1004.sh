# Unit COMP1004 Sync to dropbox script

CHOICE="$1"

if [ $CHOICE = upload ]

	then
	# Upload Command
	~/dropbox_uploader.sh -p -h upload ~/COMP1004 /
	
	elif [ $CHOICE = download ]
	then
	# Download Command
	rm -r ~/COMP1004
	~/dropbox_uploader.sh -p -h download /COMP1004 ~/
	
	else
	printf "(Incorrect option)"
	exit 1
	
fi
