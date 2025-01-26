#!/bin/bash

# Define the path for the screenshot
FILE_PATH="/tmp/$(date +%Y-%m-%d_%H-%M-%S).png"

# Capture a rectangular screenshot and save it to the defined path
xfce4-screenshooter -r -s "$FILE_PATH"

# Check if the screenshot was successfully taken
if [ -f "$FILE_PATH" ]; then
    # Perform OCR on the screenshot
    TEXT=$(tesseract "$FILE_PATH" stdout 2>/dev/null)

    # Copy the extracted text to the clipboard
    echo "$TEXT" | xclip -selection clipboard

    # Notify the user that the text has been copied
    echo "Text copied to clipboard:"
    echo "$TEXT"
else
    echo "Screenshot not taken. Exiting."
    exit 1
fi

# Clean up the temporary screenshot file
rm "$FILE_PATH"
