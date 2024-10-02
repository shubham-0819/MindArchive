#!/bin/bash

# Check if two arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <input_markdown_file> <output_audio_file>"
    exit 1
fi

# Input markdown file
input_file="$1"

# Output audio file
output_file="$2"

# Check if input markdown file exists
if [ ! -f "$input_file" ]; then
    echo "Error: Input file '$input_file' not found."
    exit 1
fi

# Extract text from the markdown file (ignoring markdown syntax)
# Using `pandoc` to convert markdown to plain text
text=$(pandoc "$input_file" -t plain)

# Check if text extraction succeeded
if [ -z "$text" ]; then
    echo "Error: Failed to extract text from '$input_file'."
    exit 1
fi

# Generate audio from the extracted text using TTS tool
# Ensure output directory exists
output_dir=$(dirname "$output_file")
mkdir -p "$output_dir"

# Run TTS command with proper parameters
tts --text "$text" --out_path "$output_file"

# Check if the audio file was generated
if [ $? -eq 0 ] && [ -f "$output_file" ]; then
    echo "Audio file generated successfully at $output_file"
else
    echo "Error: Failed to generate audio file."
    exit 1
fi

