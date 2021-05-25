#!/bin/sh -l

if [ -z "$1" ]; then
    echo "commit: [not-specified]" 
    log=$(git log -n 10 develop.. --pretty=format:'%h - %s (%an)')  
else 
    echo "commit: $1"      
    log=$(git log develop..$1 --pretty=format:'%h - %s (%an)')
fi

echo "$log"
echo ::set-output name=log::"$log"