#!/bin/bash

DOWNLOADS="$HOME/Downloads"

organize_file() {
	local FILE="$1"
	if [[ -d "$FILE" ]]; then
		return
	fi

	case "$FILE" in
		*.txt)
			mv "$FILE" "$DOWNLOADS/text/"
			;;

		*.png|*.jpeg|*.gif|*.jpg)
			mv "$FILE" "$DOWNLOADS/images/"
			;;

		*.mp3|*.wav|*.ogg)
			mv "$FILE" "$DOWNLOADS/audio/"
			;;
		*.pdf)
			mv "$FILE" "$DOWNLOADS/pdfs/"
			;;
		*.docx)
			mv "$FILE" "$DOWNLOADS/docx/"
			;;
		*.mp4|*.mkv|*.mov|*.avi)
			mv "$FILE" "$DOWNLOADS/videos/"
			;;
		*)
			mv "FILE" "DOWNLOADS/other/"
			;;
	esac
}

while true; do

	for FILE in "$DOWNLOADS"/*
	do
		organize_file "$FILE"
	done

	sleep 1

done

