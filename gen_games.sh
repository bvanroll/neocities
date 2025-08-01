html='<ul class="games">'
for entry in public/games/*
do 
  filename=$(basename "entry" .html)
  dest="/games/$filename"
  dest+=".html"
  html+="<li class=\"postli\"><a class=\"posta\" href=\"$dest"
  html+="\>$filename</a></li>"
done
html+= </ul>
echo $html
