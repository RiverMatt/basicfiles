#!/bin/bash

if ! command -v ffmpeg &> /dev/null; then
	echo "Error: ffmpeg is not installed. Exiting..."
	exit 1
fi

if [ "$#" -ne 1 ]; then
	FOLDER="."
else
	FOLDER=$1
fi

if [ ! -d "$FOLDER" ]; then
	echo "Error: The folder '$FOLDER' does not exit. Exiting..."
	exit 1
fi

for WAV_FILE in "$FOLDER"/*.wav; do

	MP3_FILE="${WAV_FILE%.wav}.mp3"

	echo "Converting $WAV_FILE to $MP3_FILE..."
	ffmpeg -i "$WAV_FILE" -codec libmp3lame -b:a 192k "$MP3_FILE"
	
	if [ $? -eq 0 ]; then
		echo "Successfully converted $MP3_FILE"
	else
		echo "Error converting $WAV_FILE"
	fi
done
