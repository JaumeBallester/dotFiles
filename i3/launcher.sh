#!/bin/bash

# make it executable : # chmod +x init_workspace.sh
# HAVE FUN !

# App you want to start :
apps=(
 	
 "/usr/bin/firefox"
 "code"
 "spotify"
 "/usr/bin/gitkraken" #git kraken sould be the last one because it needs a lot of time to boot
 
)

#set $nworkspace1 "1:  Editor   " 
#set $nworkspace2 "2: Terminals "
#set $nworkspace3 "3:  Server   " 
#set $nworkspace4 "4: Internet  "
#set $nworkspace5 "5:    Git    "
#set $nworkspace6 "6:   Music   "


# Which workspace to assign your wanted App :
workspaces=(
 "4: Internet "
 "1: Editor " 
 "6: Music "
 "5: Git "
)

# counter of opened windows
owNB=0

for iwin in ${!apps[*]}
do
    while [ "$owNB" -lt "$iwin" ] # wait before start other programs
    do
        owNB=$(wmctrl -l | wc -l) # Get number of actual opened windows
    done

    i3-msg workspace ${workspaces[$iwin]} # move in wanted workspace
    ${apps[$iwin]} & # start the wanted app
done

####### ABSOLUTELY OPTIONAL ########
## inject message(s) into terminal (first one created : /dev/pts/0)

# wait a moment
sleep 4 





