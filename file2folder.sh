#!/bin/sh
find . -maxdepth 1 -type f ! -name 'file2folder' -name '*.mkv' | while read file;
do
    f=$(basename "$file")
    f1=${f%.*}
    mkdir "$f1"
    mv "$f" "$f1"
done
