#!/bin/bash

if ! command -v udisksctl &> /dev/null; then
    echo "Error: udisksctl is not installed. Please install udisks2 package."
    exit 1
fi

echo "Listing mounted filesystems using udisksctl..."
udisksctl dump | grep -E 'MountPoints|IdLabel|IdType|Device:'

