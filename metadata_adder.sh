#!/bin/bash

if ! command -v ffmpeg &> /dev/null; then
        echo "Error: ffmpeg is not installed. Exiting..."
        exit 1
fi

if [ "$#" -ne 5 ]; then
	echo "Usage: $ metadata_adder.sh <title> <artist> <album> <track> <input file>"
	exit 1
fi


TITLE=$1
ARTIST=$2
ALBUM=$3
TRACK=$4
INPUT_FILE=$5
TMP_FILE="tmp_${INPUT_FILE}"

ffmpeg -i "$INPUT_FILE" -codec copy \
	-metadata title="$TITLE" \
	-metadata artist="$ARTIST" \
	-metadata album="$ALBUM" \
	-metadata track="$TRACK" \
	"$TMP_FILE"

mv "$TMP_FILE" "$INPUT_FILE"
