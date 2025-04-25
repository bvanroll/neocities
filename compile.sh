for entry in notes/*
do 
  echo $entry
  test=`git log --follow --format=%ad --date=format:'%Y-%m-%d' -- $entry`
  echo $test
done

