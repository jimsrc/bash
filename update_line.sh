#!/bin/bash
# updates lines instead of accumulating in stdout
echo "my first line."

while [ 1 ]; do
    date
    printf "\033[A"
    sleep 1
done

