#!/bin/bash

if [ "$#" -lt 2 ]; then
    echo "Error: expected a file path and text string"
    exit 1
fi

writefile=$1
writestr=$2

mkdir -p "$(dirname "$writefile")" || {
    echo "Error: could not create directory"
    exit 1
}

printf '%s\n' "$writestr" > "$writefile" || {
    echo "Error: could not create file"
    exit 1
}
