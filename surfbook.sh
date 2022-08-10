#!/bin/bash

cat ~/.config/surf/bookmarks | dmenu -l 10 | cut -d ' ' -f 3
