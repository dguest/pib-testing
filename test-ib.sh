#!/usr/bin/env bash

# start ib
sudo modprobe pib
# start opensm
sudo systemctl start opensm.service
# start server
sudo ibping -S   -C pib_0 -P 1 &
sudo ibping -c 1 -C pib_0 -P 1 1
sudo kill $!

