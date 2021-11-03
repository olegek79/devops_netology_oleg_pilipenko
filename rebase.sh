#!/bin/bash
# display command line options

count=1
for param in "$@"; do
    echo "next parametr2"
    count=$(( $count + 1 ))
done

echo "====="
