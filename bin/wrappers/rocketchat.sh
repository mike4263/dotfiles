#!/bin/bash
set -x
set +e

# These are user centric
APP_ID=fiognehajdbbnneicnmoaiphonihjnho

export CMD="/opt/google/chrome/google-chrome --profile-directory=Default --app-id=${APP_ID}"
export REGEXP="RH Chat$"

$HOME/dotfiles/bin/swap-window.sh
