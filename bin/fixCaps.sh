#!/bin/bash
#This script will remap Caps -> ESC
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
