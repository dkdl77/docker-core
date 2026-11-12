#!/bin/sh

echo "[ENTRYPOINT] Initializatize...."

echo "[ENTRYPOINT] Main Process Runs: $*"

exec "$@"