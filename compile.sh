#!/bin/bash
t='['
for entry in notes/*
do 
  filename=$(basename "$entry" .md)
  timestamp=`git log --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  dest="public/posts/$timestamp"
  dest+="_$filename"
  dest+=".html"
  t+="{\"source\":\"$entry\",\"dest\":\"$dest\",\"time\":\"$timestamp\"},"
done
echo "${t%?}]"

