#!/bin/bash
# Push script for Esser-isolierungen project
cd "/Users/joneshoschmand/Desktop/Webseiten/Esser-isolierungen"

echo "=== Initializing/Checking Git ==="
if [ ! -d ".git" ]; then
    git init
    git branch -M main
fi

echo "=== Configuring Remote ==="
git remote remove origin 2>/dev/null
git remote add origin git@github.com:joneshoschmand/esser-isolierungen.git
git remote set-url origin git@github.com:joneshoschmand/esser-isolierungen.git

echo "=== Adding all files ==="
git add -A

echo "=== Committing ==="
git commit -m "Fix: Update logo and fix modal images" || echo "Nothing to commit"

echo "=== Pushing to GitHub ==="
git push -u origin main --force

echo "=== Done ==="
