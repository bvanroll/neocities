#!/bin/bash
t='['
for entry in notes/*
do 
  filename=$(basename "$entry" .md)
  timestamp=`git log --follow --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  t+="{\"source\"=\"$entry\",\"dest\"=\"$filename\",\"time\"=\"$timestamp\"},"
done
echo "value=${t%?}]"

