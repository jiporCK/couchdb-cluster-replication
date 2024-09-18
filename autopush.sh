#!/bin/bash

message="$1" # commit messages when pushing code to repo

if [ -z "$message" ]; then
    echo "Run command: bash autopush.sh <commit message> 👽 "
    exit 1
fi

git add .
git commit -m "$message"
git push -u origin "$(git branch --show-current)"
