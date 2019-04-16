#!/bin/bash
mkdir /tmp/test/
gnome-terminal  --working-directory=$HOME/Repos/gstk-backend -e 'sh -c "source $HOME/Repos/gstk-backend/env/bin/activate; exec bash"'
