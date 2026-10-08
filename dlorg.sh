#!/bin/bash

DOWNLOADS="$HOME/Downloads"

make_directories() {
	mkdir -p "$DOWNLOADS/text"
	mkdir -p "$DOWNLOADS/pdfs"
	mkdir -p "$DOWNLOADS/images"
	mkdir -p "$DOWNLOADS/videos"
	mkdir -p "$DOWNLOADS/docs"
	mkdir -p "$DOWNLOADS/audio"
	mkdir -p "$DOWNLOADS/other"
}

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
			mv "$FILE" "$DOWNLOADS/docs/"
			;;
		*.mp4|*.mkv|*.mov|*.avi)
			mv "$FILE" "$DOWNLOADS/videos/"
			;;
		*)
			mv "$FILE" "$DOWNLOADS/other/"
			;;
	esac
}

while true; do

	make_directories

	for FILE in "$DOWNLOADS"/*
	do
		organize_file "$FILE"
	done

	sleep 1

done

