#!/bin/sh


# if the user does not have the fonts folder create it
if [ ! -d $HOME/.fonts ]; then
  mkdir -p $HOME/.fonts;
fi

#copy the fonts to the user fonts folder
cp $HOME/.config/fonts/*.oft $HOME/.fonts
