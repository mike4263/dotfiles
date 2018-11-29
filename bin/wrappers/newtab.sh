#!/bin/bash
set -x
set +e


# These are user centric
export CMD="/opt/google/chrome/google-chrome --profile-directory=Default "
# We don't want to match on anytng
export REGEXP="^asdfasdfsa$"

$HOME/dotfiles/bin/swap-window.sh
sleep .5
set -e
eval $(xdotool getmouselocation --shell) ;
WINDOW=`xdotool search --name 'Papier' | tail -1`
xdotool windowsize --sync $WINDOW 800 600

NEW_X=$(($X-200))
[[ $NEW_X -lt 0 ]] && NEW_X=0

NEW_Y=$(($Y-200))
[[ $NEW_Y -lt 0 ]] && NEW_Y=0


xdotool windowmove --sync $WINDOW $NEW_X $NEW_Y

