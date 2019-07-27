#!/bin/bash
set -x
set +e

export CMD="/opt/intellij/current/bin/idea.sh"
export REGEXP="IntelliJ IDEA$"

$HOME/dotfiles/bin/swap-window.sh
