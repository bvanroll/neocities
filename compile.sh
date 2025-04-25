for entry in notes/*
do 
  echo $entry
  git log --follow --format=%ad --date=format:'%Y-%m-%d' -- $entry
  echo $test
done

