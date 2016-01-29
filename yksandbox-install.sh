#!/bin/sh
export INSTALLDIR=$HOME/sandbox 
export VRUI_MAKEDIR=$HOME/sandbox/share/Vrui-3.1/make

echo "
--- Building and installing SARndbox ---
    INSTALLDIR=$INSTALLDIR 
    VRUI_MAKEDIR=$VRUI_MAKEDIR
    "

cd ~/src/Vrui-3.1-004
make INSTALLDIR=$INSTALLDIR
make install INSTALLDIR=$INSTALLDIR

cd ~/src/Kinect-2.8-002
make VRUI_MAKEDIR=$VRUI_MAKEDIR
make install INSTALLDIR=$INSTALLDIR VRUI_MAKEDIR=$VRUI_MAKEDIR

cd ~/code/SARndbox
make VRUI_MAKEDIR=$VRUI_MAKEDIR
make install INSTALLDIR=$INSTALLDIR VRUI_MAKEDIR=$VRUI_MAKEDIR

echo "--- Finished ---"

