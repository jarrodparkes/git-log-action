#!/bin/sh

echo "start: $1"
echo "end: $2"

log=$(git log $1..$2 --pretty=format:'%h - %s (%an)')

echo "$log"
echo ::set-output name=log::"$log"