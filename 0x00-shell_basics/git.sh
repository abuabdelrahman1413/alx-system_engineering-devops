#!/bin/bash
echo "Enter commit"
read commit
git add .
echo "Enter commit"
git commit -m "$commit"
