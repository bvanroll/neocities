#!/bin/bash
t='['
for entry in notes/*
do 
  filename=$(basename "$entry" .md)
  timestamp=`git log --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  t+="{\"dest\":\"$filename\",\"time\":\"$timestamp\"},"
done
echo "${t%?}]"

