#!/bin/bash
docker rm -f cli-proxy-api
docker run -d \
  --name cli-proxy-api \
  -p 8317:8317 \
  -p 8085:8085 \
  -v $(pwd)/config.yaml:/CLIProxyAPI/config.yaml \
  -v $(pwd)/auths:/root/.cli-proxy-api \
  -v $(pwd)/logs:/CLIProxyAPI/logs \
  cli-proxy-api:local
