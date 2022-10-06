#!/bin/sh

# /etc/elogind/system-sleep/suslock.sh

username=fedepau
userhome=/home/$username
export XAUTHORITY="$userhome/.Xauthority"
export DISPLAY=":0.0"

case $1/$2 in
        pre/*)
            su $username -c "/usr/local/bin/slock" &
            sleep 1s;
            ;;
esac
