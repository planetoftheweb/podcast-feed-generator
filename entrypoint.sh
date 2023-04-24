#!/bin/bash
 
echo "==================================="

git config --global user.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIL}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py

# Commit the changes
git add -A && git commit -m "Updated Feed"

# push the branch to the repository origin
git push --set-upstream origin main

echo "==================================="