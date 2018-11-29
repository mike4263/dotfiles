#!/bin/bash
set -x
set +e

# These are user centric
APP_ID=hbibbhnebobgojikephdhjmdokgkckna

export CMD="/opt/google/chrome/google-chrome --profile-directory=Default --app-id=${APP_ID}"
export REGEXP="Remember the Milk$"

$HOME/dotfiles/bin/swap-window.sh
