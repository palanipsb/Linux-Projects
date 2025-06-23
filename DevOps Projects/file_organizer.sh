#!/bin/bash

# Define directories
DEST_DIR="$HOME/organized_files"
SOURCE_DIR="$HOME/Downloads"
LOG_FILE="$DEST_DIR/file_organizer.log"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Get current timestamp for this batch operation
BATCH_TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")
echo "[$BATCH_TIMESTAMP] Starting file organization..." >> "$LOG_FILE"

# Find and move .txt files
for FILE in "$SOURCE_DIR"/*.txt; do
    if [ -f "$FILE" ]; then
        BASENAME=$(basename "$FILE")
        NAME="${BASENAME%.*}"
        EXT="${BASENAME##*.}"
        TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
        NEW_NAME="${NAME}_${TIMESTAMP}.${EXT}"
        mv "$FILE" "$DEST_DIR/$NEW_NAME"
        echo "[$(date +"%Y-%m-%d %H:%M:%S")] Moved: $BASENAME -> $NEW_NAME" >> "$LOG_FILE"
    fi
done

echo "[$(date +"%Y-%m-%d %H:%M:%S")] File organization complete." >> "$LOG_FILE"
