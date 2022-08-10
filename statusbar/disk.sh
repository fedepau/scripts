#!/bin/bash

disk=$(df -lh | awk  '{if ($6 == "/") {print $5}}')

echo "" "$disk"
