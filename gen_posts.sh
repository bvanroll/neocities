html='<ul class="posts">'
for entry in notes/*
do
  filename=$(basename "$entry" .md)
  timestamp=`git log --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  #this don't work for now
  #dest="/posts/$timestamp"
  dest="/posts/$filename"
  dest+=".html"
  html+="<li class=\"postli\"><a class=\"posta\" href=\"$dest"
  html+="\">$timestamp"
  html+="_$filename</a></li>"
done
html+="</ul>"
echo $html

