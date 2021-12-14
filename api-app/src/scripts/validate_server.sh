
#!/bin/bash

count=0

while :
do
  isExistApp=`ps ax | grep gunicorn | grep -v grep | wc -l`

  echo "Number of Process:" $isExistApp
  if [[ $isExistApp -gt 0 ]]; then
    echo "Server is Alive!"
    break

  else
    count=$count+1

    if [[ $count -ge 2 ]]; then
      echo "Server is NOT Alive!"
      exit 1
    fi
    sleep 3
  fi
done

exit 0