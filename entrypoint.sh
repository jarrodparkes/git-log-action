#!/bin/sh

echo "commit: $1"      

log=$(git log develop..$1 --pretty=format:'%h - %s (%an)')

echo "$log"
echo ::set-output name=log::"$log"