#!/bin/bash
echo "Enter commit"
read commit
git add .
git commit -m "$commit"
git push
