#!/bin/bash
set -x
set +e

# These are user centric
APP_ID=miilmjmgkdhdabfkjkilgecbhbchboem

export CMD="/opt/google/chrome/google-chrome --profile-directory=Default --app-id=${APP_ID}"
export REGEXP="@redhat.com - Red Hat Mail$"

$HOME/dotfiles/bin/swap-window.sh
