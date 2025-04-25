html='<ul class="posts">'
for entry in notes/*
do
  filename=$(basename "$entry" .md)
  timestamp=`git log --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  dest="/posts/$timestamp"
  dest+="_$filename"
  dest+=".html"
  html+="<li class=\"postli\"><a class=\"posta\" href=\"$dest"
  html+="\">$timestamp"
  html+="_$filename</a></li>"
done
html+="</ul>"
echo $html

