#!/bin/bash


swap=$(free -h | awk '/^Swap/ { print $3"/"$2 }' | sed s/i//g)

echo "" "$swap"
