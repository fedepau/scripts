#!/bin/bash

cat ~/.config/surf/bookmarks | dmenu -l 10 -i | cut -d ' ' -f 3
