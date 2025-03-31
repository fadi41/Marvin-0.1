#!/bin/bash

git filter-branch --force --index-filter "git rm --cached --ignore-unmatch 'Files/huggingface ACces token'" --prune-empty --tag-name-filter cat -- --all

rm -rf .git/refs/original/
git reflog expire --expire=now --all
git gc --prune=now
git push origin --force --all
