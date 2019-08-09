#!/bin/bash

#takes a screenshot, pixelate it, and adds the png above

ICON=$HOME/.config/i3/marvel.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png

# For pixelating
    #convert $TMPBG -scale 10% -scale 1000% $TMPBG

# For blur
    convert $TMPBG -blur 0x8 $TMPBG

convert $TMPBG $ICON -geometry +995+366 -compose difference -composite $TMPBG
convert $TMPBG $ICON -geometry +3555+366 -compose difference -composite $TMPBG

i3lock -u -i $TMPBG
