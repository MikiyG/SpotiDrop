#!/usr/bin/env bash

# SpotiDrop: Spotify Playlist Downloader
# Downloads songs from a Spotify playlist to a specified folder using spotdl.

# Check if an output directory is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 /path/to/download/folder"
    echo "Example: $0 . (downloads to current folder)"
    exit 1
fi

OUTPUT_DIR="$1"

# Create the output directory if it doesn’t exist
mkdir -p "$OUTPUT_DIR"

# Check for spotdl
if ! command -v spotdl &> /dev/null; then
    echo "Error: spotdl is not installed."
    echo "Install it with: pip3 install spotdl"
    exit 1
fi

# Check for ffmpeg
if ! command -v ffmpeg &> /dev/null; then
    echo "Error: ffmpeg is not installed."
    echo "Install it with:"
    echo "  Ubuntu: sudo apt-get install ffmpeg"
    echo "  macOS: brew install ffmpeg"
    echo "  Windows: Download from ffmpeg.org and add to PATH"
    exit 1
fi

# Remind user to use a VPN
echo "Reminder: Use a VPN for privacy while downloading."
read -p "Press Enter to continue..."

# Prompt for playlist URL
read -p "Enter the Spotify playlist URL: " PLAYLIST_URL

# Validate playlist URL
if [ -z "$PLAYLIST_URL" ]; then
    echo "Error: No playlist URL provided. Exiting."
    exit 1
fi

# Download the playlist
echo "Downloading playlist to $OUTPUT_DIR..."
spotdl -o "$OUTPUT_DIR" "$PLAYLIST_URL"

echo "Download complete!"
