#!/bin/bash

cpu=$(top -b -n1 | grep "Cpu(s)" | awk '{print $2+$4}')

echo "" "$cpu%"
