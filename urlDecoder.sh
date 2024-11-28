#!/bin/bash

# Function to decode a single URL-encoded string
decode_url() {
  echo -e "$(printf '%b' "${1//%/\\x}")"
}

# Check if the user provided an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <url-encoded-string|log-file>"
  exit 1
fi

# If the argument is a file, process each line and create an output file
if [ -f "$1" ]; then
  input_file="$1"
  output_file="${input_file%.txt}_decoded.txt"

  echo "Processing log file: $input_file"
  echo "Decoded output will be saved to: $output_file"
  echo "-------------------------"

  # Initialize an empty output file
  > "$output_file"

  # Read the file line by line
  while IFS= read -r line; do
    decoded_line=$(decode_url "$line")
    echo "Original: $line"
    echo "Decoded : $decoded_line"
    echo "--------------------"

    # Append the decoded line to the output file
    echo "$decoded_line" >> "$output_file"
  done < "$input_file"

  echo "Decoding completed. Check the output file: $output_file"
else
  # Assume the input is a single URL-encoded string
  echo "Processing single URL-encoded string..."
  decoded=$(decode_url "$1")
  echo "Original: $1"
  echo "Decoded : $decoded"
fi
