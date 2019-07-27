#!/bin/bash
set -x
#set -e
#set -u

CMD=${CMD:-1}
REGEXP=${REGEXP:-2}

# some of these variables may be empty..
#set +u

TARGET_WINDOW=$(xdotool search --name "$REGEXP")
ACTIVE_WINDOW=$(xdotool getactivewindow)

echo "Found ${TARGET_WINDOW} compared to ${ACTIVE_WINDOW}"

if [[ -z "${TARGET_WINDOW}"  ]]; then
  # its not open lets open it!
  echo "Executing $CMD"
  $CMD &
else
  # found window, is it active?
  if [[ "${TARGET_WINDOW}" -eq "${ACTIVE_WINDOW}" ]] ; then
    echo "minimizing window"
    xdotool windowminimize ${TARGET_WINDOW}
  else
    echo "activiting window ${TARGET_WINDOW}"
    xdotool windowactivate ${TARGET_WINDOW}
  fi
fi
