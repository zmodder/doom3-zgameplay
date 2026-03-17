#!/bin/bash

# 1. Check if an argument was provided
if [ -z "$1" ]; then
    echo "Usage: $0 /path/to/doom3-data-directory"
    exit 1
fi

cd "$(dirname "$0")"

DEST_DIR="$1"

# 2. Check if the destination is a valid directory
if [ ! -d "$DEST_DIR" ]; then
    echo "Error: Directory '$DEST_DIR' does not exist."
    exit 1
fi

# 3. Create the pk4 files
cd base
zip -r "$DEST_DIR/base/z_zgameplay.pk4" .
