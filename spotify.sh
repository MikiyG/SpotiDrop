#!/bin/bash

# This script downloads songs from a Spotify playlist using spotdl.
# Make sure you have spotdl and ffmpeg installed.

# To install spotdl, run: pip3 install spotdl
# To install ffmpeg on Ubuntu, run: sudo apt-get install ffmpeg

# Check if spotdl is installed
if ! command -v spotdl &> /dev/null; then
    echo "spotdl could not be found. Please install it by running 'pip3 install spotdl'"
    exit 1
fi

# Check if ffmpeg is installed
if ! command -v ffmpeg &> /dev/null; then
    echo "ffmpeg could not be found. Please install it by running 'sudo apt-get install ffmpeg'"
    exit 1
fi

# Get the playlist URL from the user
read -p "Enter the Spotify playlist URL: " playlist_url

# Download the playlist
spotdl "$playlist_url"
