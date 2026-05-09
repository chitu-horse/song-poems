#!/bin/bash
# Auto-reconnect tunnel for song-poems page
while true; do
  echo "[$(date)] Starting tunnel..."
  ssh -o StrictHostKeyChecking=no \
      -o ServerAliveInterval=30 \
      -o ServerAliveCountMax=3 \
      -o ExitOnForwardFailure=yes \
      -R 80:localhost:8080 \
      nokey@localhost.run 2>&1
  echo "[$(date)] Tunnel died, restarting in 5s..."
  sleep 5
done
