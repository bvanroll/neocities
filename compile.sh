#!/bin/bash
t='['
for entry in notes/*
do 
  echo $entry
  filename=$(basename "$entry" .md)
  echo $filename
  timestamp=`git log --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  echo $timestamp
  t+="{\"dest\"=\"$filename\",\"time\"=\"$timestamp\"},"
  echo $t
done
echo "value=${t%?} ]"

