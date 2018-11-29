#!/bin/bash
set -x
set +e

# These are user centric
APP_ID=lbidpihndibijhdkkhkokehbjpgildpb

export CMD="/opt/google/chrome/google-chrome --profile-directory=Default --app-id=${APP_ID}"
export REGEXP="Red Hat - Calendar.*20[12][890123]$" # - Week of .*? 20[12]\d$"

$HOME/dotfiles/bin/swap-window.sh
