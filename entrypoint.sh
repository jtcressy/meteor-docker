#! /bin/sh
sudo chown -Rh meteor:meteor /app
cd /app
meteor npm install --save babel-runtime
USER_ID=${LOCAL_USER_ID:-9001}

echo "Starting with UID : $USER_ID"
useradd --shell /bin/bash -u $USER_ID -o -c "" -m user
export HOME=/home/user

exec sudo -l user meteor "$@"
