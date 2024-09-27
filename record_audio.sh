#!/bin/bash

if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <duration in seconds> <output filename>.wav. Exiting..."
	exit 1
fi

DURATION=$1
OUTPUT_NAME=$2

if ! [[ "$DURATION" =~ ^[0-9]+$ ]]; then
	echo "Error: Duration must be a positive number. Exiting..."
	exit 1
fi

echo "Available audio sinks:"
pactl list sources short
echo "Please enter the desired sink ID:"
read SINK


echo "Recording for $DURATION seconds from sink $SINK to $OUTPUT_NAME"

sudo ydotool key 164:1 164:0

timeout "$DURATION" pw-record --target="$SINK" "$OUTPUT_NAME"

sudo ydotool key 164:1 164:0


echo "Recording complete. Audio saved to $OUTPUT_NAME."
