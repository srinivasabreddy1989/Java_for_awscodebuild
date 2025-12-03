#!/bin/bash
echo "Starting application..."
cd /home/ec2-user/javaapp
# If a jar is present start it in background
if [ -f app.jar ]; then
  nohup java -jar app.jar > app.log 2>&1 &
  echo $! > app.pid
  echo "App started (pid $(cat app.pid))"
else
  echo "ERROR: app.jar not found" >&2
  exit 1
fi
