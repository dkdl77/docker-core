#!/bin/sh
# app.sh
# Requires APP_MODE. Serves a status page on port 8080 with busybox httpd.

if [ -z "${APP_MODE}" ]; then
  echo "ERROR: APP_MODE is not set. Exiting." >&2
  exit 2
fi

mkdir -p /www
echo "as03 app running (mode=${APP_MODE})" > /www/index.html
echo "--- as03 app started on port 8080 (mode=${APP_MODE}) ---"

# Replace the shell with httpd as the main process (PID 1)
exec httpd -f -v -p 8080 -h /www