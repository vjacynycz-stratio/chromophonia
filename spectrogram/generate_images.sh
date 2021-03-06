#!/bin/bash

path=`pwd`
echo "Searching for files in path $path..."

for entry in "$path/wavs/audio"/*
do
  echo "Starting generation of image for $entry"

  python3 spectrogram.py -f "$entry"
done
