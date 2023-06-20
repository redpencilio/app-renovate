#! /usr/bin/env sh

APP_ID=349967
APP_INSTALLATION_ID=38811142
PRIV_KEY_FILENAME=redpencil-renovate-bot.2023-06-20.private-key.pem

docker run --rm -v "$PWD/secrets/$PRIV_KEY_FILENAME:/private-key.txt" ghcr.io/mshekow/github-app-installation-token:latest $APP_ID $APP_INSTALLATION_ID /private-key.txt
