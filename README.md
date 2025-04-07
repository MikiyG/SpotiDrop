SpotiDrop: Spotify Playlist Downloader
Overview

SpotiDrop is a simple Bash script that allows users to download songs from a Spotify playlist to a specified local folder using the spotdl tool. The script automates the process of downloading all tracks from a playlist, ensuring that dependencies such as spotdl and ffmpeg are present before starting the download.
Features

    Downloads songs from a Spotify playlist to a user-defined folder.

    Automatically checks and installs required dependencies (spotdl and ffmpeg).

    Prompts the user for the Spotify playlist URL.

    Suggests using a VPN for privacy when downloading content.

Requirements

Before using the script, you need the following dependencies installed on your system:

    spotdl: A command-line tool to download songs from Spotify.

    ffmpeg: Required for handling audio formats during the download process.

Install Dependencies

    Install spotdl:

        Run:

    pip3 install spotdl

Install ffmpeg:

    On Ubuntu:

sudo apt-get install ffmpeg

On macOS:

        brew install ffmpeg

        On Windows:

            Download from ffmpeg.org and add it to your system's PATH.

Optional: Use a VPN

The script reminds the user to use a VPN for privacy while downloading Spotify content.
Usage

    Download the Script: Save the script as spotidrop.sh or any other name you prefer.

    Make the Script Executable:

chmod +x spotidrop.sh

Run the Script:

./spotidrop.sh /path/to/download/folder

    Replace /path/to/download/folder with your desired destination for the downloaded songs. If you want to download to the current directory, simply use ..

    Example:

        ./spotidrop.sh .

    Enter the Playlist URL:

        When prompted, enter the Spotify playlist URL. The script will begin downloading the playlist to the specified folder.

Example

$ ./spotidrop.sh ~/Music
Reminder: Use a VPN for privacy while downloading.
Press Enter to continue...

Enter the Spotify playlist URL: https://open.spotify.com/playlist/xyz
Downloading playlist to ~/Music...
Download complete!

Troubleshooting

    spotdl is not installed: The script will display an error message if spotdl is not installed. Install it with pip3 install spotdl.

    ffmpeg is not installed: If ffmpeg is missing, the script will notify you. Install it using the provided platform-specific instructions.

    Invalid Playlist URL: If you don't provide a valid URL, the script will prompt an error and exit.

License

This project is licensed under the MIT License - see the LICENSE file for details.
Contributing

Feel free to submit issues or pull requests for any improvements or bug fixes.
