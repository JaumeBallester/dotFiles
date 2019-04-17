#!/bin/sh


# if the user does not have the fonts folder create it
if [ ! -d $HOME/.fonts ]; then
  mkdir -p $HOME/.fonts;
fi



DEST="$HOME/.fonts"
EXT="otf"

#copy the fonts to the user fonts folder
cd $HOME/.config/fonts

for i in *."$EXT"; do
	sudo cp -iv "$i" "$DEST"
done




echo
echo
echo "Updating the font cache..."
sudo fc-cache -fv

if [ $? != 0 ]; then
    echo "Error updating the font cache. Your fonts haven't been completely installed. Try running sudo fc-cache -fv manually. Exiting..."
    echo -n "Press <Enter> to continue."
    read FSF
    exit $?
fi
