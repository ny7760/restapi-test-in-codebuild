
#!/bin/bash
isExistApp=`ps ax | grep gunicorn | grep -v grep | wc -l`
if [[ $isExistApp -gt 0 ]]; then
   ps ax | grep gunicorn | grep -v grep |  awk '{ print "kill -9", $1 }' | sh
   sleep 3
   echo "number of process:" `ps ax | grep gunicorn | grep -v grep | wc -l`
fi
