#! /usr/bin/env sh

PRIV_KEY_FILE="/secrets/private-key.pem"

export RENOVATE_TOKEN=$(github-app-installation-token --privateKeyLocation $PRIV_KEY_FILE --appId $APP_ID --installationId $APP_INSTALLATION_ID)
export RENOVATE_CONFIG_FILE="/config/renovate.js"


renovate
