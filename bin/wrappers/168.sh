#!/bin/bash
set -x
set +e

# These are user centric
APP_ID=lhjipfkkmhiejbdcbmhdefkhfphnacil

export CMD="/opt/google/chrome/google-chrome --profile-directory=Default --app-id=${APP_ID}"
export REGEXP="^Time Tracker - Google Sheets$"

$HOME/dotfiles/bin/swap-window.sh
