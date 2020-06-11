#!/bin/bash
set -e
echo "Initiating..."
until curl --output /dev/null --silent --head --fail "$KIBANA_URL"; do
  >&2 echo "Kibana is unavailable - sleeping"
  sleep 1
done
>&2 echo "Kibana is up"
source /usr/local/bin/docker-entrypoint