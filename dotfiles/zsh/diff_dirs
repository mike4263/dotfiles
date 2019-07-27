#!/usr/bin/env zsh

function diff_dirs() {
  ORIG=$(realpath $1)
  OTHER=$(realpath $2)
  L=`mktemp`-left
  R=`mktemp`-right

  ls -1 $ORIG > $L; ls -1 $OTHER > $R
  vimdiff $L $R
}
