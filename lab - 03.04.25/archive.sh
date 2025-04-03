#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <directory_to_compress> <output_archive_name>"
    exit 1
fi

DIRECTORY=$1
ARCHIVE_NAME=$2

if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi

tar -czvf "$ARCHIVE_NAME.tar.gz" "$DIRECTORY"

echo "Compression complete: $ARCHIVE_NAME.tar.gz"

