#!/bin/bash

  rx=$(netupdate /sys/class/net/[ew]*/statistics/rx_bytes)
  tx=$(netupdate /sys/class/net/[ew]*/statistics/tx_bytes)
  net=$(printf " %4sB  %4sB\\n" $(numfmt --to=iec $rx $tx))

  echo $net
