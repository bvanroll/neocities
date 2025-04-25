#!/bin/bash
t='['
for entry in notes/*
do 
  echo $entry
  filename=$(basename "$entry" .md)
  #filename="${entry%}"
  timestamp=`git log --follow --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  t+="{\"source\"=\"$entry\",\"dest\"=\"$filename\",\"time\"=\"$timestamp\"},"
done
echo "value=${t%?}]"
echo "value=${t%?}]" >> $GITHUB_OUTPUT

