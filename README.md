SpotiDrop: Spotify Playlist Downloader

This script allows you to download songs from a Spotify playlist using the spotdl tool. It checks for required dependencies (spotdl and ffmpeg), prompts for a Spotify playlist URL, and saves the songs to a specified folder.
Prerequisites

To use this script, ensure the following are installed on your system:

    Python 3.x: Required to run spotdl.
    pip3: Used to install spotdl.
    spotdl: The Spotify downloader tool.
    ffmpeg: For audio processing.
    git: Optional, for cloning the repository.

Installation

Follow these steps to set up the dependencies:

    Verify Python 3.x and pip3
    Ensure they’re installed. Check with:
    bash

python3 --version
pip3 --version
If not installed, download them from python.org.
Install spotdl
Run this command:
bash
pip3 install spotdl
Install ffmpeg
Instructions depend on your operating system:

    Ubuntu:
    bash

sudo apt-get install ffmpeg
macOS:
bash

        brew install ffmpeg
        Windows: Download from ffmpeg.org, extract, and add to your system’s PATH.

Usage

Important: Use a VPN when running the script to ensure privacy and compliance with terms of service.

This bash script is designed for Unix-like systems (e.g., Linux, macOS). Windows users can run it via WSL (Windows Subsystem for Linux) or Git Bash.

To keep your downloads organized and avoid cluttering your home folder, follow these steps:

Step 1: Get the Script

You have two options to obtain the script—cloning the repository or downloading it directly.

    Option 1: Clone the Repository
    If you have git installed, clone the SpotiDrop repository:
    bash

git clone https://github.com/MikiyG/SpotiDrop.git
cd SpotiDrop

Option 2: Download the Script Directly
Use curl to download spotify.sh into your desired folder:
bash

    curl -O https://raw.githubusercontent.com/yourusername/SpotiDrop/main/spotify.sh

Step 2: Set Up the Download Folder

Create a folder where you want the songs to be saved, then navigate to it:
bash
mkdir my_playlist_songs
cd my_playlist_songs

If you downloaded the script directly (Option 2), ensure it’s in this folder by running the curl command above here.
Step 3: Make the Script Executable

Grant execute permissions to the script:
bash
chmod +x spotify.sh
Step 4: Run the Script

Run the script, specifying the download folder (use . for the current folder):
bash
./spotify.sh .

    The script will prompt you to enter the Spotify playlist URL (e.g., https://open.spotify.com/playlist/xyz).
    Songs will be downloaded to the folder you’re in (e.g., my_playlist_songs).

Alternatively, you can specify a different folder:
bash
./spotify.sh /path/to/download/folder

If the folder doesn’t exist, the script will create it.
Step 5: Enter the Playlist URL

When prompted, paste the Spotify playlist URL and press Enter. The script will download the songs.
Example

Here’s a complete example:

    Create and enter a folder:
    bash

mkdir my_playlist_songs
cd my_playlist_songs
Download the script:
bash
curl -O https://raw.githubusercontent.com/yourusername/SpotiDrop/main/spotify.sh
Make it executable:
bash
chmod +x spotify.sh
Run the script:
bash

    ./spotify.sh .
    Enter a playlist URL when prompted, e.g., https://open.spotify.com/playlist/xyz.

The songs will download into my_playlist_songs.
