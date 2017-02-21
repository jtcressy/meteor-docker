#! /bin/sh
sudo chown -Rh meteor:meteor /app
cd /app
meteor npm install --save babel-runtime
meteor "$@"
