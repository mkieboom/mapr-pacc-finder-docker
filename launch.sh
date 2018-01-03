#!/bin/bash

# Check if the /mapr/clustername mountpoint is available
if [ "$(sudo ls /mapr/ |wc -l)" -eq 0 ]; then
  echo "MapR not running. exiting."
  exit
else
  # launch something
  echo "MapR running. Launching nginx and php"
  sudo /bin/cp -rf /index.php /usr/share/nginx/html/index.php && sudo php-fpm && sudo nginx -g 'daemon off;'
fi