#!/bin/bash

application=$(
	xlsclients | sed -e 's/.*VirtualBox/foobar virtualbox/g' -e 's/.*soffice/foobar libreoffice/g' | grep -v "plugin-container" | cut -d " " -f3 | dmenu -l 10 -p "Switch to:" $@)

case $application in
	gimp | truecrypt)
		xdotool search --onlyvisible -classname "$application" windowactivate &> /dev/null
		;;
	*)
		xdotool search ".*${application}.*" windowactivate &> /dev/null
		;;
esac
