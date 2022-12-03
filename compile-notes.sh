#!/bin/sh

echo "# Notes" > ./README.md
echo  >> ./README.md

for file in ./notes/*; do
    cat "$file" >> ./README.md
done