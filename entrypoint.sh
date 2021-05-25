#!/bin/bash

if [[ $1 != '' ]] then   
    echo "commit: [not-specified]" 
    log=$(git log --pretty=format:'%h - %s (%an)')
else   
    echo "commit: $1"      
    log=$(git log master..$1 --pretty=format:'%h - %s (%an)')
fi

echo $log
echo ::set-output name=log::$log