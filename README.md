# SpotiDrop
Spotify Playlist Downloader

This script allows you to download songs from a Spotify playlist using the spotdl tool. It includes checks for required dependencies (spotdl and ffmpeg) and prompts you to enter a Spotify playlist URL to download the songs.
Prerequisites

To use this script, you’ll need the following installed on your system:

    Python 3.x (required to run spotdl)
    pip3 (to install spotdl)
    spotdl (the Spotify downloader tool)
    ffmpeg (for audio processing)

Installation

Follow these steps to set up the dependencies:

    Ensure Python 3.x and pip3 are installed on your system.

    Install spotdl by running:
    bash

pip3 install spotdl

Install ffmpeg (instructions vary by operating system):

    On Ubuntu:
    bash

sudo apt-get install ffmpeg

On macOS:
bash

        brew install ffmpeg

        On Windows: Download ffmpeg from the official site and add it to your system’s PATH.

Usage (USE VPN)

This is a bash script intended for Unix-like systems (e.g., Linux or macOS). For Windows users, you can run it using WSL (Windows Subsystem for Linux) or Git Bash.

To ensure the downloaded songs don’t clutter your home folder, follow these steps carefully:

    Create a new folder where you want the songs to be downloaded. For example:
    bash

mkdir my_playlist_songs
cd my_playlist_songs

Clone or download the script (spotify.sh) into this new folder.

Navigate to the folder in your terminal (if not already there):
bash
cd my_playlist_songs

Make the script executable:
bash
chmod +x spotify.sh

Run the script:
bash

    ./spotify.sh

    When prompted, enter the Spotify playlist URL. The script will download the songs to the current folder.

Example

If you create a folder named my_playlist_songs and place the script there:

    Navigate to my_playlist_songs.
    Run chmod +x download_playlist.sh followed by ./download_playlist.sh.
    Enter a playlist URL (e.g., https://open.spotify.com/playlist/xyz).
    The songs will download into my_playlist_songs.

Important Note

The script downloads songs to the current working directory. Running it from your home folder (~) will save the songs there, potentially cluttering it. Always execute the script from a dedicated folder to keep your downloads organized. AND USE VPN WHEN RUNNING THE SCRIPT.
