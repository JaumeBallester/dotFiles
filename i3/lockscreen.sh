#!/bin/bash

#takes a screenshot, blurs it, and adds the png above

i3lock -i <(import -silent -window root png:- | mogrify -blur 0x8 png:- | composite -gravity Center  $HOME/.config/i3/Rick.png png:- png:-)
