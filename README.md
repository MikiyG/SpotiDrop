SpotiDrop

SpotiDrop is a bash script that enables you to download songs from a Spotify playlist to a specified folder using the spotdl tool.
Usage

To run SpotiDrop, execute the script with the path to your desired download folder as an argument:
bash
./spotify.sh /path/to/download/folder

For example, to download songs to the current directory:
bash
./spotify.sh .

If no argument is provided, the script will display a usage message and exit:
text
Usage: ./spotify.sh /path/to/download/folder
Example: ./spotify.sh . (downloads to current folder)
Prerequisites

Before using SpotiDrop, you need to install the following dependencies:

    spotdl: A tool for downloading Spotify songs.
    ffmpeg: A multimedia framework required by spotdl to process audio files.

Installing spotdl

Install spotdl using pip:
bash
pip3 install spotdl
Installing ffmpeg

    Ubuntu:
    bash

sudo apt-get install ffmpeg
macOS:
bash

    brew install ffmpeg
    Windows: Download ffmpeg from ffmpeg.org and add it to your system PATH.

How It Works

The script performs the following steps:

    Checks for Output Directory: Ensures a download folder is provided as an argument. If not, it shows the usage message and exits.
    Creates the Directory: If the specified folder doesn’t exist, it creates it automatically.
    Verifies Dependencies: Checks if spotdl and ffmpeg are installed. If either is missing, it provides installation instructions and exits.
    VPN Reminder: Displays a reminder to use a VPN for privacy and waits for you to press Enter.
    Prompts for Playlist URL: Asks you to input the Spotify playlist URL.
    Validates the URL: Ensures a URL is provided; otherwise, it exits with an error.
    Downloads the Playlist: Uses spotdl to download the playlist to the specified folder and confirms when the download is complete.
