#!/bin/bash
#xmodmap -e "keycode 9 = Caps_Lock NoSymbol Caps_Lock"   #this will make Esc to act as Caps Lock
xmodmap -e "keycode 66 = Escape NoSymbol Escape"
xmodmap -e "keycode 9 = Escape NoSymbol Escape"
xmodmap -e "clear lock"
