#! /usr/bin/env sh

RENOVATE_TOKEN=$(./refresh-token.sh)
docker run --rm -v "$PWD/config/renovate/renovate.js:/usr/src/app/config.js" -e RENOVATE_TOKEN="$RENOVATE_TOKEN" renovate/renovate:slim
