#! /bin/sh
sudo chown -Rh meteor:meteor /app
cd /app
meteor "$@"
