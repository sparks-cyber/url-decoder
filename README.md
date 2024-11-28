# URL Decoder Script
URL Decoder Script

This project contains a versatile Bash script that decodes URL-encoded strings. The script can handle single strings as well as log files containing multiple encoded URLs, making it useful for tasks such as log analysis or debugging.

Features

Single String Decoding: Quickly decode a single URL-encoded string passed as an argument.
File Decoding: Process log files line by line, decode each URL-encoded string, and save the results to a new output file.
Automated Output File Creation: When processing a file, the script automatically generates a new file with the suffix _decoded appended to the original filename.
Simple and Flexible: The script is designed to be easy to use with minimal setup required.
How It Works
For Single Strings: The script decodes the provided string and prints the original and decoded versions to the terminal.
For Files:
Reads each line of the file.
Decodes the URL-encoded string.
Outputs the decoded strings to both the terminal and a new output file.

Requirements

Bash shell (available by default on most Unix-based systems like Linux and macOS; can be installed on Windows via WSL or Git Bash).
Basic understanding of running scripts in a terminal.

Acknowledgments
This script was created with the assistance of ChatGPT, an AI language model developed by OpenAI. ChatGPT provided guidance and suggestions for writing the script, implementing features, and structuring the project for ease of use.

Contributing
If you have ideas to improve the script or encounter any issues, feel free to open a pull request or submit an issue on GitHub.
