#!/bin/bash

DOWNLOADS="$HOME/Downloads"

organize_file() {
	local FILE="$1"
	if [[ -d "$FILE" ]]; then
		return
	fi

	case "$FILE" in
		*.txt)
			TARGET_DIR="$DOWNLOADS/text/"
			;;

		*.png|*.jpeg|*.gif|*.jpg)
			TARGET_DIR="$DOWNLOADS/images/"
			;;

		*.mp3|*.wav|*.ogg)
			TARGET_DIR="$DOWNLOADS/audio/"
			;;
		*.pdf)
			TARGET_DIR="$DOWNLOADS/pdfs/"
			;;
		*.docx)
			TARGET_DIR="$DOWNLOADS/docs/"
			;;
		*.mp4|*.mkv|*.mov|*.avi)
			TARGET_DIR="$DOWNLOADS/videos/"
			;;
		*)
			TARGET_DIR="$DOWNLOADS/other/"
			;;
	esac
	mkdir -p "$TARGET_DIR"
	mv "$FILE" "$TARGET_DIR"
	echo "moved $FILE to $TARGET_DIR"
}

echo "watching $DOWNLOADS"

while true; do

	for FILE in "$DOWNLOADS"/*
	do
		organize_file "$FILE"
	done

	sleep 1

done

